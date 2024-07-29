clear all
close all
clc

%% Add YALMIP solver path

addpath(genpath('YALMIP-master'))

% cd YALMIP-master
% urlwrite('https://github.com/yalmip/yalmip/archive/master.zip','yalmip.zip');
% unzip('yalmip.zip','yalmip')
% addpath(genpath([pwd filesep 'yalmip']));
% savepath

%% Type of power flow equations used

% nl_index=1; % Non-linear power flow solution
nl_index=0; % Linear power flow solution

%% DER inclusion flag

Q_bat_flag = 1; % DER included
% Q_bat_flag = 0; % No DER included and objective of OPF is zero

if Q_bat_flag == 0
    l_fact = 0.5; % load reduction factor when studying network physics
elseif Q_bat_flag == 1
    l_fact = 1;
else
    error('You have not choosen between "topology physics study" vs "evaluating MSR".');
end

%% If Solar is active

PV_flag = 1; % Solar is included in the model
% PV_flag = 0; % Solar is not included

%% Non-uniformity in load and solar uncertainty

flag_L_uncer = 1; % non-uniformity change in nodal loads consumption
% flag_L_uncer = 0; % Uniform change in nodal loads consumption


%% Select DER location

DER_location=[7 25 42 60 86]; %%%% is using for 123 bus paper simulations setup

%% Read the load data

LoadData = xlsread('Native_Load_2018.xlsx');
ref_load = mean(LoadData(:,9));

%% Read Solar Data

if PV_flag==1
    load('SolarData.mat');
    % PV_factor=1;
    PV_factor=10;
    max_PV=max(SolarData(:,1))/PV_factor;
end


%% Start the Data generation
no_normal_samples = 20000;
hr_ind=5941;
% std_factor=0.1;
std_factor=0.5;

%% Prepare Solar Data hour wise

if PV_flag==1
    PV_node_gen_nominal = SolarData(hr_ind,1)/PV_factor; % mean
    %%% Doing a normal distribution for solar
    PV_std = sqrt(PV_node_gen_nominal*std_factor); % Standard Deviation => Vary this to see the effect of variance
    PV_node_gen = PV_std.*randn(no_normal_samples,1) + PV_node_gen_nominal;
    PV_node_gen(PV_node_gen<=0)=0;
    %%% Fixed to same value for solar
    %     PV_node_gen = PV_node_gen_nominal*ones(no_normal_samples,1);
    PV_vec = PV_node_gen/max_PV;
    PV_stats = [mean(PV_node_gen) std(PV_node_gen) var(PV_node_gen)];
else
    PV_node_gen=zeros(no_normal_samples,1);
end

%% Prepare Load Data hour wise

% load_change_nominal =(LoadData(hr_ind,9)-ref_load)/ref_load; % mean
load_change_nominal1 =(LoadData(hr_ind,9)-ref_load)/ref_load; % mean
load_change_nominal1=abs(load_change_nominal1);
load_change_nominal = 0; % zero mean
if load_change_nominal<0
    load_change_nominal=abs(load_change_nominal);
    %     load_std= sqrt(load_change_nominal*std_factor); % Standard Deviation => Vary this to see the effect of variance
    load_std= sqrt(load_change_nominal1*std_factor);
    load_change = load_std.*randn(no_normal_samples,1) + load_change_nominal;
    load_change = -load_change;
else
    %     load_std= sqrt(load_change_nominal*std_factor); % Standard Deviation => Vary this to see the effect of variance
    load_std= sqrt(load_change_nominal1*std_factor);
    load_change = load_std.*randn(no_normal_samples,1) + load_change_nominal;
end
load_stats = [mean(load_change) std(load_change) var(load_change)];

%% Assign nodal loads

load('Bus123_Nodepq_PU_Data.mat');
n = 114; % number of buses other than the PCC bus 0
NodeDataPU_123=NodeDataPU_123(2:(n+1),:);
for k1 = 1:1:no_normal_samples
if flag_L_uncer == 1
    Lnonuniformity_std_factor = 0.0001; % Std around the load change for different nodes
    if load_change(k1,1) >= 0
        Lnonuniformity_std = sqrt(load_change(k1,1)*Lnonuniformity_std_factor);
    elseif load_change(k1,1) < 0
        Lnonuniformity_std = sqrt(-load_change(k1,1)*Lnonuniformity_std_factor);
    end
    Lnonuniformity_dist=Lnonuniformity_std.*randn(1000,1)+load_change(k1,1); % Mean is load_change(1,1)
    random_select = randi(1000,n,1);
    Lnonuniformity_select = Lnonuniformity_dist(random_select,1); % Choose randomly from 1000 samples
    nodal_load(k1).pL(1:n,1) = NodeDataPU_123(1:n,3).*(ones(size(NodeDataPU_123(1:n,3)))+Lnonuniformity_select); % load - active
    delta_load(k1,1) = (sum(nodal_load(k1).pL(1:n,1))/sum(NodeDataPU_123(1:n,3)))-1; % calculating the sum of load change seen at PCC

elseif flag_L_uncer == 0
    nodal_load(k1).pL(1:n,1) = NodeDataPU_123(1:n,3)*(1+load_change(k1,1)); % load - active
    delta_load(k1,1)=load_change(k1,1);
else
    error('Uniformity / Non-uniformity of uncertainty in load is not selected');
end
end

%% OPF solution

h = waitbar(0,'Please wait...'); %handle for the waitbar
h_len=no_normal_samples;
sample_pt=1;

flag_topology=0; % Using nominal topology

for var_ind=1:1:h_len
    [solution1(:,:,sample_pt),solution2(:,:,sample_pt),Obj_val] = Bus123_Dist_PF_Opt(nl_index,l_fact*nodal_load(var_ind).pL,...
        DER_location,PV_node_gen(var_ind,1),PV_flag,Q_bat_flag,NodeDataPU_123,flag_topology); 
    OPF_data.Xs(sample_pt,1)=delta_load(sample_pt,1);
    if PV_flag==1
        OPF_data.Xs(sample_pt,2)=PV_node_gen(var_ind,1);
    end
    if flag_L_uncer == 1
        OPF_data.Original_del_L(sample_pt,1) = load_change(var_ind,1);
        OPF_data.pL(:,sample_pt) = nodal_load(var_ind).pL(:,1);
    end

    for k=1:1:length(DER_location)
        OPF_data.Ys(sample_pt,k)=solution1(DER_location(k),4,sample_pt);
    end

    OPF_data.Obj_val(sample_pt,1)=Obj_val;
    
    OPF_data.lineflow(sample_pt).solution = solution2(:,:,sample_pt);
    OPF_data. nodaleq(sample_pt).solution = solution1(:,:,sample_pt);

    OPF_data.DER_location=DER_location;
    waitbar(sample_pt/h_len,h,sprintf('%d of %d', sample_pt, h_len)); %update waitbar status
    sample_pt=sample_pt+1;
end







