%% Lab Exercise 1

%% Part 1
figure(1)
rp = -20*log10(0.9);
rs = -20*log10(0.15);
wp = 10;
ws = 20;

[n,wc]=buttord(wp,ws,rp,rs,'s');
[num,den]=butter(n,wc,'s');

s1=tf(num,den);

[h,w] = freqs(num,den);

plot(w, abs(h));
hold on;


[n,wc]=cheb2ord(wp,ws,rp,rs,'s');
[num,den]=cheby2(n,rs,wc,'s');
s2 = tf(num,den);

[h,w] = freqs(num,den);
plot(w, abs(h));
grid on
ylabel('H');
xlabel('w (rads/s)');

legend('Butterworth','chebyshev II');

s1
s2



%% Part 1 observation

    % Butterworth and chebysev filter II achieved the requirements.
    % However, chebysev has n = 3, while butterworth is n=4;
    
%% Lab Exercise 2
figure(2)
rp = -20*log10(0.9);
rs = -20*log10(0.15);
wp = 15;
ws = 20;




