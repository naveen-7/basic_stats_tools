%% Function to do ttest with mean and std input

% Created by NAVEEN ON 06/15/15 at CUMC






function p_final = ttest_n(A,B,std1,std2,n1,n2)



if nargin<2
    error('Incomplete input to the function ttest_n');
elseif nargin==2
    varargin{1} = A;
    varargin{2} = B;
    A(isnan(A))=[];
    B(isnan(B))=[];
    mean1 = nanmean(A);
    mean2 = nanmean(B);
    std1  = nanstd(A);
    std2  = nanstd(B);
    n1=length(A);
    n2=length(B);

elseif nargin==3 | nargin==4 | nargin==5
    error('Incorrect input to the function ttest_n');
    
    elseif nargin==6
    varargin{1} = A;
    varargin{2} = B;
    varargin{3} = std1;
    varargin{4} = std2;
    varargin{5} = n1;
    varargin{6} = n2;
    mean1=A;
    mean2=B;
else
    error('Too many inputs to the function ttest_n');
end




% % mean1 = AVG_T(3);
% % mean2 = AVG_T(4);
% % std1 = STD_T(3);
% % std2 = STD_T(4);
% % n1 = length(points_bef_T(2,:));
% % n2 = length(points_aft_T(2,:));

Sp = ((n1-1).*std1.^2+(n2-1).*std2.^2)./(n1+n2-2);
t = (mean1-mean2)./(sqrt(Sp.*(1./n1+1./n2)));
p = tcdf(t,n1+n2-2);
p_final = 2*min(p,1-p);



% %%%%%%%%%%%%%%%%%%%%%%
% N = nanmean([n1;n2]);
% 
% v = 2*N-2;
% tval = (A-B) / sqrt((std1^2+std2^2)/N);       % Calculate T-Statistic
% tdist2T = @(t,v) (1-betainc(v/(v+t^2),v/2,0.5));    % 2-tailed t-distribution
% tdist1T = @(t,v) 1-(1-tdist2T(t,v))/2;              % 1-tailed t-distribution
% tprob = 1-[tdist2T(tval,v)  tdist1T(tval,v)];
% 
% p_final = tprob(1);

end