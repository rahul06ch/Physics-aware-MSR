
function [X_ref_ind,y_ref_ind,max_slope] = decision_line_cal(Xn_label2_new)

%% Calculating slope for the boundary points th respect to leftmost minimum point as reference

% Reference point
X_ref_ind = min(Xn_label2_new(:,1)); % X1
y_ref_ind = Xn_label2_new(find(Xn_label2_new(:,1)==min(Xn_label2_new(:,1))),2); % Y1

%% Calculating the slope
% slope of each boundary point with respect to reference

p1=1;
for i=1:1:length(Xn_label2_new(:,1))
    if i~=find(Xn_label2_new(:,1)==min(Xn_label2_new(:,1)))
        % Col 1: slope value, % Col 2: X-cordinate of the point, % Col 3: Y-cordinate of the point
        slope_ind(p1,1) = (Xn_label2_new(i,2) - y_ref_ind)/(Xn_label2_new(i,1) - X_ref_ind);
        slope_ind(p1,2) = Xn_label2_new(i,1);
        slope_ind(p1,3) = Xn_label2_new(i,2);
        p1=p1+1;
    end
end

%% Point where maximum slope lies: This will determine the boundary, i.e. decision hyperplane
max_slope = max(slope_ind(:,1));

%% Plot to check the position of the maximum slope point on the decision plane

% max_slope_ind = find(slope_ind(:,1)==max(slope_ind(:,1)));
% x_decision_pt = slope_ind(max_slope_ind,2); % X2
% y_decision_pt = slope_ind(max_slope_ind,3); % Y2

% figure
% plot(Xn_label2_new(:,1),Xn_label2_new(:,2),'b*');
% hold on
% plot(x_decision_pt,y_decision_pt,'go')

%% Decision plane equation

% (y - Y1)/(x - X1) = (Y2 - Y1)/(X2 - X1);
% => (y - Y1) = [(Y2 - Y1)/(X2 - X1)]*(x - X1);
% => (y - y_ref_ind) = max_slope*(x - X_ref_ind);
% => y - max_slope*(x - X_ref_ind) - y_ref_ind = 0.

end


