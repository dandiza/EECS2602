function [dy] = DE7(t,y)

% DE1 computes the 1st derivate of y(t) given the value of the signal
% y(t) and time t

C = 0.4;
R = 5;
L = 0.2;
x = 3 * sin(pi .* t) + 2 * cos(pi .* t);

dy = [y(2); (1 / (L * C)) * x + (-(1 / (R * C))...
     * y(2) - (1 / (L * C)) * y(1))];

end