%% takes the p value and gives you the appropriate stars
% created by naveen at cumc on 06/30/17

function OUT = star_n(p)
if 0.01<=p & p<0.05
    OUT='*';
elseif 0.001<=p & p<0.01
    OUT='**';
elseif p<0.001
    OUT='***';
else
    OUT='ns';
end


end