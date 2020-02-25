tspan = [0 2];
y0 = 5;
[t,y] = ode23(@DE1, tspan, y0);
subplot(2,1,1)
plot(t,y)

[t,y] = ode23(@DE2, tspan, y0);
subplot(2,1,2)
plot(t,y)
