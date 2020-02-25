tspan = linspace(0,2);
y0 = 3;
[t,y] = ode23(@DE3, tspan, y0);
subplot(2,1,1)
plot(t,y)


