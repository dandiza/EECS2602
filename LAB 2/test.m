tspan = linspace(0,30);

[t,y] = ode23(@DE8, tspan, y0);
plot(t,y(:,1))
title('Zero-Input Response');
xlabel('time');
ylabel('y(t) (Volts)');
