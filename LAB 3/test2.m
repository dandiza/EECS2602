%% LAB EXERCISE 2

% I've the the Dn formula to get fourier series of the graph




t = linspace(-4,4);
x_t2 = 0;


for n = -25:1:25
    if(n==0)
        continue;
    else
        Dn = (1/1i*pi*n)*(1-exp(1i*pi*n));
        x = Dn*exp(t.*2*pi*1i*n);
        x_t2=x_t2+x;
    end
    
end
figure(4)
subplot(3,1,1);
plot(t,x_t2)
title("Fourier Series");
ylabel("x_2(t)");
xlabel("Time (t)");
grid on
    

t = linspace(-3,3);
xt = 0;


for n = -25:2:25
        a = (4/(pi*n))*sin(n*pi.*t);
        xt = xt + a;
end
grid on

subplot(3,1,2);
h = 8.*exp(t*-20).*heaviside(t);
y = conv(xt,h);
plot(y);
ylabel("y(t)");
xlabel("Time (t)");
grid on

 % Part 2
 
 subplot(3,1,3);
h = 8.*exp(t*-2).*heaviside(t);
y2 = conv(xt,h);
plot(y2);
ylabel("y_2(t)");
xlabel("Time (t)");
grid on
