%% function to calculate rms distance between two vectors
% written by naveen at JLG on 7/13/20

function RMS = rms_n(A,B)

if size(A)==size(B)
   RMS =  real(sqrt(nanmean(abs(A.^2 - B.^2))));
end

end