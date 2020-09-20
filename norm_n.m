 %% To normalize the input vector from 0 to 1
 %% written by naveen 0n 5/21/16 at cumc



function NORM = norm_n(Vector)

MAX = nanmax(Vector);
MIN = nanmin(Vector);

NORM = Vector-MIN;
NORM = NORM/MAX;

end