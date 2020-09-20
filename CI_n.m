%% written by naveen 
% calculates the confidence interval

function CI = CI_n(data)
SEM = std(data)/sqrt(length(data));
ts = tinv([0,025 0.975],length(data)-1);
CI = nanmean(data) + ts*SEM;
end