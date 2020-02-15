t = linspace(0,0.5);
y = 5*exp(t.*-20);

subplot(2,1,1);
title('Zero Input Response of LR Circuit')
plot(t,y);
ylabel('y_z_i(t)');
xlabel('Time (t)');

yzs = y+1;
subplot(2,1,2);
title('Total Output Response of LR Circuit')
plot(t,yzs);
ylim([0 6])
ylabel('y_z_s(t)');
xlabel('Time (t)');