%% Function to do ttest with two vectors

% Created by NAVEEN ON 08/13/17 at CUMC


function [p,TYPE] = ttest_NN(A,B)



if nargin<2
    error('Incomplete input to the function ttest_NN');
elseif nargin==2
    varargin{1} = A;
    varargin{2} = B;
else
    error('Too many inputs to the function ttest_NN');
end



A=(A(~isnan(A)));
B=(B(~isnan(B)));

A = A(:); B = B(:);

clear p;
if ( (lillietest(A)==0 & lillietest(B)==0) )
    
    if size(A,1)==size(B,1)
        [~,p] = ttest(A,B);
             disp('paired ttest');
         TYPE=1;
    else
        [~,p] = ttest2(A,B);
             disp('2 sample ttest');
         TYPE=2;
    end
    
else
    [p,~] = ranksum(A,B);
        disp('ranksum');
    TYPE=3;
end



end