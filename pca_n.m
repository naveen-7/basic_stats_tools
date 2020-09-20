%% PCA through eigenvector decomposition
% written by naveen at JLG on 3/29/19
% gives identical results as MATLAB's pca with eig algorithm


function [e_vec, e_val] = pca_n(MAT)

%%%% MAT should be a N x P matrix where N is number of neurons and P is
%%%% time or other dimension (i.e transpose of the traditional vectors as columns format)
%%% e_vec and e_val will be sorted based on the decreasing order of eigen value

N = size(MAT,1);
[e_vec2,e_val2] = eig(cov(MAT));
e_val2 = e_val2(e_val2~=0);
[e_val3,order]=sort(e_val2,'descend');
e_val = e_val3(1:N);

e_vec3 = e_vec2(:,order);
e_vec3 = e_vec3';
e_vec = e_vec3(1:N,:);

end