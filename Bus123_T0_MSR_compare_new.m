%%%%%%%%%%%%%%%%%%%%% Comparing LR and MSR for 2k and 20k data points of 33 node system %%%%%%%%%%%%%%%

% Load the generated data which gives a number of (2k / 20k) operating points (OPF solutions)
OPF_X = OPF_data.Xs;
OPF_Y = OPF_data.Ys;

Yselect=1; % Predicting for which DER

%%%%%%%% To keep the number of test samples 200 %%%%%%%%%%%
percentage_train=99; % When we use 20k points
% percentage_train=90;  % When we use 2k points
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% label_flag=0; -> means no label is attached in raining phase
% label_flag=1; -> means label is attached in raining phase

%% Training and Testing data set segregation

Y_data=OPF_Y(:,Yselect); % Target variable
X_data=OPF_X;% Normalized Predictors

%% Checking the presence of PV

N=length(Y_data(:,1));

xtrain=X_data(1:floor(N*(percentage_train/100)),:);
ytrain=Y_data(1:floor(N*(percentage_train/100)),1);
xtest=X_data((floor(N*(percentage_train/100))+1):end,:);
ytest=Y_data((floor(N*(percentage_train/100))+1):end,1);

%% Initial Labeling

ytrain=[ytrain ones(length(ytrain),1)];
epsilon1=-1e-6;
epsilon2=1e-6;

if Yselect == 4
    epsilon1=-1e-9;
    epsilon2=1e-9;
end

for k=1:1:length(ytrain)
    if ((ytrain(k,1)<0)&&(ytrain(k,1)>epsilon1))||((ytrain(k,1)>0)&&(ytrain(k,1)<epsilon2)) % -> Used here for y2
        ytrain(k,2)=0;
    end
end
p1=1;
p2=1;
p3=1;
p4=1;
Xp_label2=[];
Yp_label2=[];
Xn_label2=[];
Yn_label2=[];
Xp_label1=[];
Yp_label1=[];
Xn_label1=[];
Yn_label1=[];

for k=1:1:length(ytrain)
    if (ytrain(k,2)==1)&&(ytrain(k,1)>epsilon2)&&(ytrain(k,1)>0)
        Xp_label2(p1,:)=xtrain(k,:);
        Yp_label2(p1,1)=ytrain(k,1);
        p1=p1+1;
    elseif (ytrain(k,2)==1)&&(ytrain(k,1)<epsilon1)&&(ytrain(k,1)<0)
        Xn_label2(p3,:)=xtrain(k,:);
        Yn_label2(p3,1)=ytrain(k,1);
        p3=p3+1;
    elseif (ytrain(k,2)==0)&&(ytrain(k,1)<epsilon2)&&(ytrain(k,1)>0)
        Xp_label1(p2,:)=xtrain(k,:);
        Yp_label1(p2,1)=ytrain(k,1);
        p2=p2+1;
    elseif (ytrain(k,2)==0)&&(ytrain(k,1)>epsilon1)&&(ytrain(k,1)<0)
        Xn_label1(p4,:)=xtrain(k,:);
        Yn_label1(p4,1)=ytrain(k,1);
        p4=p4+1;
    end
end

xptrain = [Xp_label1; Xp_label2];
yptrain = [Yp_label1 zeros(size(Yp_label1));
    Yp_label2 ones(size(Yp_label2))];

xntrain = [Xn_label1; Xn_label2];
yntrain = [Yn_label1 zeros(size(Yn_label1));
    Yn_label2 ones(size(Yn_label2))];

%%%% Meaning of the ^labels
%%%% ytrain(k,2)=0; -> No reactivepower output from the DERs
%%%% ytrain(k,2)=1; -> DERs participates in reactive power compensation

% figure
% [n1,x11]=hist(X_label1(:,1),100);
% [n2,x22]=hist(X_label2(:,1),100);
% h1=bar(x11,n1,'hist');
% hold on
% h2=bar(x22,n2,'hist');
% set(h2,'facecolor','red')
% grid on
% ylabel('Count');
% xlabel('Cumulative load variation (p.u.)');
% % title('X Histogram (Blue = Label 1, Red = Label 2)','fontweight','bold','Fontsize',14)
% set(gca,'fontweight','bold','Fontsize',14)

if isempty(xptrain)~=1
    [thp,Xp_label1,Yp_label1,Xp_label2,Yp_label2,decision_thres] = Bus123_logistic_new(xptrain,yptrain);
end
if isempty(xntrain)~=1
    [thn,Xn_label1,Yn_label1,Xn_label2,Yn_label2,decision_thres] = Bus123_logistic_new(xntrain,yntrain);
end

x11=min(Xn_label2(:,1));
x22=Xn_label2(find(Xn_label2(:,1)==min(Xn_label2(:,1))),2);
decision_residue = thn(1)+thn(2)*x11+thn(3)*x22;

%% Plot of decision space

% figure
% if isempty(Xp_label1)~=1
%     plot(Xp_label1(:,1),Xp_label1(:,2),'r.');
%     hold on
% end
% if isempty(Xp_label2)~=1
%     plot(Xp_label2(:,1),Xp_label2(:,2),'b*.');
%     hold on
% end
% if isempty(Xn_label1)~=1
%     plot(Xn_label1(:,1),Xn_label1(:,2),'go');
%     hold on
% end
% if isempty(Xn_label2)~=1
%     plot(Xn_label2(:,1),Xn_label2(:,2),'c*');
% end

%% Boundary detection

border = boundary(Xn_label2(:,1),Xn_label2(:,2));
Xn_label2_new=Xn_label2(border,:);
% figure
% plot(Xn_label2_new(:,1),Xn_label2_new(:,2),'b*');

% Finding clusters
nonz_solar_border = find(Xn_label2_new(:,2)>0);
% Removing the non-zero solar injection points
delta_L_border = Xn_label2_new;
delta_L_border(nonz_solar_border,:)=[];
[clustersXY] = clusterXYpoints(delta_L_border,0.5,2,'point','merge');
if length(clustersXY)==2
    flag_multi_border=1;
    delta_L_border_clus1 = cell2mat(clustersXY(1,1));
    delta_L_border_clus2 = cell2mat(clustersXY(2,1));

    other_pt = Xn_label2_new(nonz_solar_border,1);
    clus1_add=[];
    clus2_add=[];
    for i=1:1:length(other_pt(:,1))
        if other_pt(i,1)<min(delta_L_border_clus2(:,1))
            clus1_add= [clus1_add;
                Xn_label2_new(nonz_solar_border(i,1),:)];
        else
            clus2_add= [clus2_add;
                Xn_label2_new(nonz_solar_border(i,1),:)];
        end
    end

    clus1_pt = [delta_L_border_clus1;
        clus1_add];
    clus2_pt = [delta_L_border_clus2;
        clus2_add];
    [X_ref1_clus1_ind,y_ref1_clus1_ind,max_slope1_clus1] = decision_line_cal(clus1_pt);
    [X_ref1_clus2_ind,y_ref1_clus2_ind,max_slope1_clus2] = decision_line_cal(clus2_pt);

    X_ref2_clus1_ind = max(delta_L_border_clus1(:,1));
    y_ref2_clus1_ind = 0;
    clus1_border2_pt = clus1_pt(find(clus1_pt(:,1)==max(clus1_pt(:,1))),:);
    max_slope2_clus1 = (clus1_border2_pt(1,2)-y_ref2_clus1_ind)/(clus1_border2_pt(1,1)-X_ref2_clus1_ind);

    X_ref_ind = [];
    y_ref_ind = [];
    max_slope = [];

    % figure
    % scatter(delta_L_border_clus1(:,1),delta_L_border_clus1(:,2),'b*')
    % hold on
    % scatter(delta_L_border_clus2(:,1),delta_L_border_clus2(:,2),'r*')
    % hold on
    % scatter(clus1_add(:,1),clus1_add(:,2),'b*')
    % hold on
    % scatter(clus2_add(:,1),clus2_add(:,2),'r*')
    % hold on
    % plot(clus1_border2_pt(1,1),clus1_border2_pt(1,2),'go')
else
    flag_multi_border=0;
    [X_ref_ind,y_ref_ind,max_slope] = decision_line_cal(Xn_label2_new);
    X_ref1_clus1_ind = [];
    y_ref1_clus1_ind = [];
    max_slope1_clus1 = [];
    X_ref2_clus1_ind = [];
    y_ref2_clus1_ind = [];
    max_slope2_clus1 = [];
    X_ref1_clus2_ind = [];
    y_ref1_clus2_ind = [];
    max_slope1_clus2 = [];
end

%% Regression coefficient calculation

if isempty(Yp_label2)~=1
    %% LR = Linear Regression

    YpFit_LR=LinearModel.fit(Xp_label2,Yp_label2);
    betapLR=table2array(YpFit_LR.Coefficients(:,1));
end

if isempty(Yn_label2)~=1
    if flag_multi_border==1
        % Cluster 1 coefficients
        [flag_member1, clus1_pt_ind]=ismember(clus1_pt,Xn_label2,'rows');
        Yn_label2_clus1 = Yn_label2([clus1_pt_ind],:);
        YnFit_LR_clus1=LinearModel.fit(clus1_pt(:,:),Yn_label2_clus1);
        betanLR_clus1=table2array(YnFit_LR_clus1.Coefficients(:,1));
        % Cluster 2 coefficients
        [flag_member2, clus2_pt_ind]=ismember(clus2_pt,Xn_label2,'rows');
        Yn_label2_clus2 = Yn_label2([clus2_pt_ind],:);
        YnFit_LR_clus2=LinearModel.fit(clus2_pt(:,:),Yn_label2_clus2);
        betanLR_clus2=table2array(YnFit_LR_clus2.Coefficients(:,1));
    elseif flag_multi_border==0
        %% LR = Linear Regression

        YnFit_LR=LinearModel.fit(Xn_label2,Yn_label2);
        betanLR=table2array(YnFit_LR.Coefficients(:,1));
    end
end


%% Testing phase: Prediction from X_test
for k=1:1:length(xtest)
    if flag_multi_border==1
        % For cluster 1
        label_gaugen11(k,1)=xtest(k,2) - max_slope1_clus1*(xtest(k,1) - X_ref1_clus1_ind) - y_ref1_clus1_ind;
        label_gaugen12(k,1)=xtest(k,2) - max_slope2_clus1*(xtest(k,1) - X_ref2_clus1_ind) - y_ref2_clus1_ind;
        % For cluster 2
        label_gaugen21(k,1)=xtest(k,2) - max_slope1_clus2*(xtest(k,1) - X_ref1_clus2_ind) - y_ref1_clus2_ind;
        if (label_gaugen11(k,1)>0)||((label_gaugen12(k,1)<0)&&label_gaugen21(k,1)>0)
            ypred_LR(k,1)=0;
            ypred_label(k,1) = 0;
        elseif (label_gaugen11(k,1)<0)&&(label_gaugen12(k,1)>0)
            ypred_LR(k,1)=[1 xtest(k,:)]*betanLR_clus1;
            ypred_label(k,1) = 1;
        elseif label_gaugen21(k,1)<0
            ypred_LR(k,1)=[1 xtest(k,:)]*betanLR_clus2;
            ypred_label(k,1) = 1;
        end
    elseif flag_multi_border==0
        label_gaugen(k,1)=xtest(k,2) - max_slope*(xtest(k,1) - X_ref_ind) - y_ref_ind;
        if label_gaugen(k,1) > 0
            ypred_LR(k,1)=0;
            ypred_label(k,1) = 0;
        else
            ypred_LR(k,1)=[1 xtest(k,:)]*betanLR;
            ypred_label(k,1) = 1;
        end
    end
end

%% Error LR for data which is not labeled

YFit_nolabelLR=LinearModel.fit(xtrain,ytrain(:,1));
betanolabelLR=table2array(YFit_nolabelLR.Coefficients(:,1));
ypred_nolabelLR=[ones(length(xtest(:,1)),1) xtest]*betanolabelLR;

[error_nolabelLR,mean_abs_error_nolabelLR,...
    std_error_nolabelLR,mse_nolabelLR,nmse_nolabelLR,max_error_nolabelLR,max_bound_nolabelLR] = error_analysis(ytest,ypred_nolabelLR,0,0);


%% Error LR for data which is labeled


[error_labelLR,mean_abs_error_labelLR,...
    std_error_labelLR,mse_labelLR,nmse_labelLR,max_error_labelLR,max_bound_labelLR] = error_analysis(ytest,ypred_LR,ypred_label,1);





