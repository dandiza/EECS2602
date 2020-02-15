function [dy] = DE1(t,y)

% DE1 computes the 1st derivate of y(t) given the value of the signal
% y(t) and time t

dy = -2*y + 3*t;
end