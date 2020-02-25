function [dy] = DE5(t,y)

% DE1 computes the 1st derivate of y(t) given the value of the signal
% y(t) and time t


R1 = 5;
RL = 10;
C = 0.2;

dy = -((R1 / RL + 1)/(C * R1)) * y + 1/(C * R1)...
     * 0.4 * cos(0.5 * pi * t);

end