tspan = linspace(0,15);
y0 = 5;
[t,y] = ode23(@DE3, tspan, y0);
subplot(3,1,1)
plot(t,y)
title('Zero-Input Response');
xlabel('time');
ylabel('y(t) (Volts)');


[t,y] = ode23(@DE4, tspan, y0);
subplot(3,1,2)
plot(t,y)
title('Output Response');
xlabel('Time (s)');
ylabel('y(t) (V)');

y0 = 10;
[t,y] = ode23(@DE5, tspan, y0);
subplot(3,1,3)
plot(t,y)
title('Output Response');
xlabel('Time (s)');
ylabel('y(t) (V)');