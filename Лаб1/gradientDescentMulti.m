function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Определение значения theta методом градиентного спуска
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) производит переопределение
%   theta в процессе выполнения num_iters итерационных шагов с параметром скорости обучения
%   alpha

% Инициализация переменных
m = length(y); % Количество элеменов обучающего набора
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== ВАШ КОД ЗДЕСЬ ======================

    theta = theta - alpha * (1 / m) * X' * (X * theta - y);

    % ============================================================

    % Сохраняйте функцию стоимости на каждой итерации
    J_history(iter) = computeCostMulti(X, y, theta);
end

end
