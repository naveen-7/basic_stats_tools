%% Function to return the area under the ROC curve given two vectors as input
% adapted by naveen on 9/5/17 at cumc

 function [X,Y,T,AUC] = ROC_n(Vector1,Vector2)

pred = [Vector1;Vector2];

resp(1:length(Vector1),1)=0;
resp(length(Vector1)+1:length(Vector1)+length(Vector2),1)=1;
Resp = resp;
resp=logical(resp);

mdl = fitglm(pred,resp,'Distribution','binomial','Link','logit');
scores = mdl.Fitted.Probability;
[X,Y,T,AUC] = perfcurve(Resp,scores,1);  % AUC is the area under the curve


% plot(X,Y)
% xlabel('False positive rate')
% ylabel('True positive rate')
% title('ROC for Classification by Logistic Regression')

end