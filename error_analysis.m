function [percentage_error,mean_abs_error,...
    std_error,mse,nmse,max_error,max_bound] = error_analysis(Y_test,ypreicted,ypred_label,label_flag)

if label_flag>0
    for i=1:1:length(Y_test)
            if ypred_label(i,1) == 0
            percentage_error(i,1)=0;
        else
            percentage_error(i,1)=100*((abs(Y_test(i,1))-abs(ypreicted(i,1)))/abs(Y_test(i,1)));
        end
    end
else
    percentage_error=100*((abs(Y_test)-abs(ypreicted))./abs(Y_test));
end
mean_abs_error=mean(abs(percentage_error));
std_error=std(percentage_error);
mse=mean(sum((Y_test-ypreicted).^2));
nmse=mean(sum((Y_test-ypreicted).^2))/(mean(Y_test)*mean(ypreicted));
max_error=max(abs(Y_test-ypreicted));
max_bound=abs(max(Y_test)-min(Y_test));

end