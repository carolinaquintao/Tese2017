function [Mean_Square_Error, Root_MSE,NRMSE] = MSE(Reference_Image, Target_Image)

% Takes two images (2D) and returns Mean Square Error 
% Be aware Matrix dimensions must agree

% written by Amir Pasha Mahmoudzadeh
% Wright State University
% Biomedical Imaging Lab

Reference_Image = double(Reference_Image);
Target_Image = double(Target_Image);

[M N] = size(Reference_Image);
error = abs(Reference_Image - Target_Image);
Mean_Square_Error = sum(sum(error .* error)) / (M * N);
Root_MSE = sqrt(Mean_Square_Error);
NRMSE = Root_MSE/(max(Reference_Image(:))-min(Reference_Image(:)));
end
