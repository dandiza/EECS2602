function [dy] = DE3(t,y)

% DE1 computes the 1st derivate of y(t) given the value of the signal
% y(t) and time t

dy = -0.5*y + t;
end