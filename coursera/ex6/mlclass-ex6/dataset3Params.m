function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

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


x1 = [1 2 1]; x2 = [0 4 -1];

lowest = 10;
lowest_C = 1.0;
lowest_sig = 0.1;

%for C = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30]
%    for sigma = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30]
%        model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
%        preds = svmPredict(model, Xval);   
%        dat_error = mean(double(preds ~= yval));
%        if (dat_error < lowest)
%            lowest = dat_error;
%            lowest_C = C;
%            lowest_sig = sigma;
%        endif
%    end
%end

C = lowest_C;
sigma = lowest_sig;
fprintf('The lowest C: %f  sigma: %f with error %f.\n', C, sigma, lowest);
% The lowest C: 1.000000  sigma: 0.100000 with error 0.030000.

% =========================================================================

end
