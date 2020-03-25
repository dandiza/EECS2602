%% EXERCISE 1
  
  % A)
  
  p = 2;
  t = -4:0.01:4;
  V_s = 0;
  a_o = 2/pi;
  w_o = pi;
  
for n = 1:1:40
     V_s = V_s + (4/(pi*(1-4*n^2)))*exp(t.*w_o*n*1i); 
end

figure(1)
V_s = V_s + a_o;
plot(t,V_s)
xlabel("Time");
ylabel("X(t)");


% B)

n = -10:1:10;
D_n = (4/pi)./(1-4*n.^2);
phase = angle(D_n);
mag = abs(D_n);
figure(2)
subplot(2,1,1)
stem(n, mag);
xlabel("n");
ylabel("Magnitude");
subplot(2,1,2)
stem(n, phase);
xlabel("n");
ylabel("Phase");



%c

  
  p = 2;
  t = -4:0.0002:4;
  Y = 0;
  a_o = 2/pi;
  w = pi;
  H = 0;
  V_s = 0;
  
  
for n = 1:1:40
     V_s = V_s + (4/(pi*(1-4*n^2)))*exp(t.*w_o*n*1i); 
end

for n = 1:1:10
     H = 10/(30.5*1i*n*w);
     an = 4/(pi*(1-4*n^2));
     Y = Y + an*exp(t.*w*n*1i)*H;
end
figure(3)
H = 10/30.5;
Y = Y + a_o*H;
figure(3)
plot(t,V_s+a_o);
hold on
plot(t,Y);
xlabel("Time");
ylabel("X(t)");
legend('x(t)','y(t)');




%% EXERCISE 2

% I've the the Dn formula to get fourier series of the graph




t = linspace(-4,4);
x_t2 = 0;


for n = -25:1:25
    if(n==0)
        continue;
    else
        Dn = (1/1i*pi*n)*(1-exp(1i*pi*n));
        x = Dn*exp(t.*2*pi*1i*n);
        x_2t=x_2t+x;
    end
    
end
figure(4)
subplot(3,1,1);
plot(t,xt)
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

%% EXERCISE 3

figure(5)

y1 = 8;
x1 = [1 20];
subplot(2,1,1)
sys1 = tf(y1,x1);
bode(sys1, {0.01, 1000}); 
y2 = 8;
x2 = [2 2];
subplot(2,1,2)
sys2 = tf(y2,x2);
bode(sys2, {0.01, 1000}); 

% 3B

% 2c has a greater magnitude cutoff than 2b, but converges at high
% frequecies. In addition,2b phase cut off in lower thatn 2c.

% 3c

t = -4:0.0001:4;
w = pi;
y = 0;
for n = -25:2:25
    if n == 0
        continue;
    else
        h1 = 8 / (20 + 1i * n * w);
        h2 = 8 / (2 + 1i * n * w);
        dn = (1 / (1i * w * n)) * (1 - exp(1i * -w * n));
        y = y + dn * h1 * h2 * exp(1j * n * w * t); 
    end
end
figure(6)
plot(t, y);
title('y(t)');
xlabel('Time');
ylabel('Amplitude');
grid;

%% EXERCISE 4

figure(7)
r1 = 10;
rl = 100;
c = 0.0001;
s1 = tf(1, [(r1 * c) (1 + r1 / rl)]);
bode(s1, {0.001, 100});
title('H(w)');
grid;

%% EXERCISE 5

% part a

  figure(8)
  r1 = 2;
  l = 0.001;
  c = 0.00001;
  s = tf('s');
  s1 = 1 / (s*(s*(l*c)+(l/r1))+1);
  bode(s1, {0.001, 100});
  title('H(w)');
    grid;
    
    
   % part b
     figure(9)
  r1 = 200;
  l = 0.001;
  c = 0.00001;
  s = tf('s');
  s1 = 1 / (s*(s*(l*c)+(l/r1))+1);
  bode(s1, {0.001, 100});
  title('H(w)');
    grid;
   
   
  
  





