
%% This function checks for normality of the input and performs either ranksum or ttest accordingly
%% and returns the p value.
% Created by Naveen on 06/30/15 at CUMC


function p = stats_test_n(Matrix1,Matrix2)

    if length(Matrix1(~isnan(Matrix1))) & length(Matrix2(~isnan(Matrix2))) >=4
        if ( (lillietest(Matrix1)==0 & lillietest(Matrix2)==0) )
            p = ttest_n(Matrix1,Matrix2);
%             [h p] = ttest(Matrix1,Matrix2);
        else
            [p h] = ranksum(Matrix1,Matrix2);
        end
    end


end