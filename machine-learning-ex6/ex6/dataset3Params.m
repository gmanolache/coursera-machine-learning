function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.1;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

%model = svmTrain(X, y, C, @linearKernel, 1e-3, 20);
%predictions = svmPredict(model, Xval);

%errors = mean(double(predictions ~= yval))

%printf(errors)

samples = [ 0.01, 0.03, 0.1, 0.3, 1.0, 3.0, 10.0, 30.0];

cs = samples
sigmas = samples

bestError = 0
bestC = 0
bestSigma = 0

trial = 1;

%for tryC = cs
%  for trySigma = sigmas
%    fprintf(['Attempt #%d: C = %f, sigma = %f\n'], trial, tryC, trySigma);
%      model = svmTrain(X, y, tryC, @(x1, x2) gaussianKernel(x1, x2, trySigma));
%
%      prediction = svmPredict(model, Xval);
%      predictionError = mean(double(prediction == yval));
%      if (predictionError > bestError)
%        bestError = predictionError
%        bestC = tryC
%        bestSigma = trySigma
%    trial = trial + 1;
%  end
%end  
%
%C = bestC
%sigma = bestSigma

fprintf(['\nFound: C = %f, sigma = %f\n'], C, sigma);

% =========================================================================

end
