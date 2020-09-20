%% function to interpolate NaN values in a given vector
% adapted by naveen at cumc on 9/5/17

function VECTOR = interpolate_NaN_n(VECTOR)
x = VECTOR;
nanx = isnan(x);
t    = 1:numel(x);
x(nanx) = interp1(t(~nanx), x(~nanx), t(nanx));
VECTOR=x;
end