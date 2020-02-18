tspan = [0 5];
y0 = 5;
[t,y] = ode23(@(t,y) -20*y, tspan, y0);
plot(t,y)
