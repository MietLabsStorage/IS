function [C, sigma] = dataset3Params(X, y, Xval, yval)

C = 1;
sigma = 0.3;

values = [0.01 0.03 0.1 0.3 1 3 10 30];

min_err = 100;
for i=1:8
    for j=1:8
        C_check = values(i);
        sigma_check = values(j);
        model = svmTrain(X, y, C_check, @(x1, x2) gaussianKernel(x1, x2, sigma_check));
        predictions = svmPredict(model, Xval);
        err = mean(double(predictions ~= yval));
        if err < min_err
            C = C_check;
            sigma = sigma_check;
            min_err = err;
        end
    end
end

disp("C=")
disp(C)
disp("sigma=")
disp(sigma)

% =========================================================================

end
