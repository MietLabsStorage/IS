function [theta] = normalEqn(X, y)
%NORMALEQN ?????????? ??????? ?????????? ????????? ??? ??????? ?????? ????????
%   ?????????? ? ??????????? ??????????
%   NORMALEQN(X,y) ? ??????? ?????? ??????? ?????????????? ??????? ?????? ????????
%   ?????????? ? ??????????? ?????????? ? ??????? ??????? ?????????? ?????????

theta = zeros(size(X, 2), 1);

% ============= ??? ??? ????? ==============
% ??????????: ??????????? ??????? pinv ??? ?????????? ???????? thea
%
%

theta = pinv(X' * X) * X' * y

% ============================================================

end
