function J = computeCost(X, y, theta)
%COMPUTECOST ?????????????? ???????? ??????? ??????? ??? ?????? ???????? ?????????
%   J = COMPUTECOST(X, y, theta) ???????? ??????? ??????? ??????????? ? ??????????? ?? ????????? theta,
%   ?.?. ????????? ???????? ????????, ??????????????? ???????????? ???????? ??????
%  (?????????????? ??????)X ? y.

% ????????????? ????????? ?????? ?????????
m = length(y); % ????? ????????? ?????????? ??????

% ??? ??????? ????????? ????????(?) ????????? ?????????? ?????????

J = 0;

% ============= ??? ??? ????? ==============
% ??????????: ?????????? ????????? J ??? ????????? ?????? ????????? theta.
%             ? ?????????? ????????? ????? ???????????? ????????? J.

J = 1 / (2 * m) * sum(((X * theta) - y).^2);

% ===========================================
end
