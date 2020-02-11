t = -5:0.01:5;

x = cos(t.*(2*pi+0.25)) + 1i*sin(t.*(2*pi+0.25));
f = -3*sign(t).*x;

r = real(f);
i = imag(f);

figure(4)
subplot(2,1,1)
plot(t,r);
legend('Real');
xlabel('Time (t)');
ylabel('X(t)');

subplot(2,1,2)
plot(t,i);
legend('Imaginary');
xlabel('Time (t)');
ylabel('X(t)');

%part b
x_new = f.*rectangularPulse(t.*0.25);

r = real(x_new);
i = imag(x_new);


subplot(2,1,1)
plot(t,r);
legend('Real');
xlabel('Time (t)');
ylabel('X(t)');

subplot(2,1,2)
plot(t,i);
legend('Imaginary');
xlabel('Time (t)');
ylabel('X(t)');
