%% Normalise values of an array to be between -1 and 1
%% original sign of the array values is maintained.
% Adapted by Naveen at cumc on 8/9/17

function norm_value = norm_pos2neg_n( data )

if abs(min(data)) > max(data)
    max_range_value = abs(min(data));
    min_range_value = min(data);
else
    max_range_value = max(data);
    min_range_value = -max(data);
end
norm_value = 2 .* data ./ (max_range_value - min_range_value);

end