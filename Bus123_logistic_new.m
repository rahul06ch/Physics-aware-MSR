function [thp,Xp_label1,Yp_label1,Xp_label2,Yp_label2,decision_thres] = Bus123_logistic_new(xptrain,yptrain)

%% Derving correct non-overlaping labeling through logistic regression

xptrain_logistic = [ones(length(xptrain),1) xptrain yptrain(:,1:(end-1))];
yptrain_logistic = yptrain(:,end);
xptest_logistic=xptrain_logistic;
yptest_logistic=yptrain_logistic;

%compute cost and gradient
iter=1e5; % No. of iterations for weight update

thetap=zeros(size(xptrain_logistic,2),1); % Initial weights

alpha=0.1; % Learning parameter

[J grad h thp]=logistic_regress_cost(thetap,xptrain_logistic,yptrain_logistic,alpha,iter); % Cost funtion

yppred=xptest_logistic*thp; %target prediction

% probability calculation
[hpp]=sigmoid(yppred); % Hypothesis Function

%% Applying sigmoid function to Y_prediction
decision_thres=0.5;

yppred(hpp>=decision_thres)=1;
yppred(hpp<decision_thres)=0;


%% Using logistic labeling and predicting

Xp_label1=[];
Yp_label1=[];
Xp_label2=[];
Yp_label2=[];

p1=1;
p2=1;
for k=1:1:length(yppred)
    if yppred(k,1)==1
        Xp_label2(p1,:)=xptrain(k,:);
        Yp_label2(p1,1)=yptrain(k,1);
        p1=p1+1;
    else
        Xp_label1(p2,:)=xptrain(k,:);
        Yp_label1(p2,1)=yptrain(k,1);
        p2=p2+1;
    end
end

end