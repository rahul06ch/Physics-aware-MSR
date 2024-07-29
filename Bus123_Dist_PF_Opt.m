function [solution1,solution2,Obj_val]...
    = Bus123_Dist_PF_Opt(nl_index,pL,...
    DER_location,PV_node_gen,PV_flag,Q_bat_flag,NodeData,flag_topology)

%%%%%% Running this file for testing %%%%%%%
% PV_flag = 1; % Solar is included in the model
% % PV_flag = 0; % Solar is not included

% DER_location=[7 25 42 60 86 106];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Parameters
load('Bus123_BranchRX_PU_Data.mat');

n = 115; % number of buses including PCC bus 0
m1 = 114; % number of branches
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

m = 152; % Number of bracnches including boundary branches with zero flow
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rl=zeros(m,1);
xl=zeros(m,1);
rl(1:m1,1) = BranchDataPU_123(1:m1,3); % resistance
xl(1:m1,1) = BranchDataPU_123(1:m1,4); % reactance

%% Assign nodal loads

qL(1:(n-1),1) = NodeData(1:(n-1),3); % load - reactive

%% Assign solar generation

pPV(1:n,1) =zeros(n,1);
if PV_flag==1 % if we are considering solar integrated feeder
    for i=1:1:length(DER_location)
        pPV(DER_location(i),1) = PV_node_gen; % PV generation (active power) at that hour
    end
end

%% Variable limits and constraints


% Vmin = 0.9^2; %denoted as V1 band of voltage
% Vmax = 1.1^2;
Vmin = 0.92^2; %denoted as V2 band of voltage
Vmax = 1.08^2;

if Q_bat_flag == 0
    Vmin = 0.5^2; %denoted as V2 band of voltage
    Vmax = 1.5^2;
end

SbasekVA = 100;
VbasekV = 4.16;

% nodes where no DER is connected
for i=1:1:n
    if i~=DER_location
        no_bat(i)=i;
    end
end
no_bat=nonzeros(no_bat);
no_bat=no_bat';

%% Define variables
pi = sdpvar(n,1,'full'); % nodal active power demand
qi = sdpvar(n,1,'full'); % nodal reactive power demand
vi = sdpvar(n,1,'full'); % nodal voltage
P = sdpvar(m,1,'full'); % active power flow
Q = sdpvar(m,1,'full'); % reactive power flow
Qbat=sdpvar(n,1,'full'); % Battery active power

%% flexibility polytope
% box constraints
A0 = [-1 1]';
b0 = [10 10]';


%% Define constraints
Constraints = [];

for i = 1 : length(DER_location)
    Constraints = [Constraints, (A0*Qbat(DER_location(i)) <= b0):'DERbound' ]; % constraint for battery charge - discharge
end

for i = 1 : n
    Constraints = [Constraints, vi(i)>= Vmin , vi(i)<= Vmax];
    Constraints = [Constraints, (vi(i)>= Vmin):'Vlbound', (vi(i)<= Vmax):'Vubound'];
end

if nl_index==0
    Topology_def = 'Bus123_Topology_%d_wboundary'; % With boundary lines with zero flow
    Topology_file = sprintf(Topology_def,flag_topology);
    run (Topology_file)
else
    error('Correct Topology DistFlow equations are not included.');
end

Constraints = [Constraints, (pi(1) == 0):'nodePLeq1', (qi(1)== 0):'nodeQLeq1' ];

if Q_bat_flag == 0
    Constraints = [Constraints, Qbat(1:n) == zeros(n,1)];
elseif Q_bat_flag == 1
    for i=1:1:length(no_bat)
        Constraints = [Constraints, Qbat(no_bat(1,i)) == 0];
    end
end

Constraints = [Constraints, (pi(2:n) == pL(1:(n-1))):'nodePLeq2', (qi(2:n)== qL(1:(n-1))):'nodeQLeq2'];

%% Define an objective
alpha1=10;
alpha2=1;

Objective = 0;

if Q_bat_flag == 1
    Objective = Objective + alpha1*P(1);
    for i = 1 : length(DER_location)
        Objective = Objective + alpha2*(Qbat(DER_location(i)))^2;
    end
end

% Set some options for YALMIP and solver
if nl_index == 1
    options = sdpsettings('verbose',1,'solver','fmincon'); % Save dual variables
elseif nl_index == 0
    options = sdpsettings('verbose',1,'solver','quadprog');
end
%% Solve the problem
sol = optimize(Constraints,Objective,options);

clc

%% Record the solution

% Analyze error flags
if sol.problem == 0
    % Extract and display value
    if PV_flag==1
        solution1 = [(1:n); value(pi'); value(qi');  value(Qbat'); (value(sqrt(vi'))); value(pPV')]';
    else
        solution1 = [(1:n); value(pi'); value(qi');  value(Qbat'); (value(sqrt(vi')))]';
    end
    solution2 = [1:length(P'); value(P') ; value(Q')]';
    Obj_val = value(Objective);
else
    display('Hmm, something went wrong!');
    sol.info
    yalmiperror(sol.problem)
end


end