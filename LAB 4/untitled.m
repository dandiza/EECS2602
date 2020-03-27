wPass = 15;
wStop = 20;
rPass = -20*log10(0.9);
rStop = -20*log10(0.15);

[n,wn] = ellipord(wPass, wStop, rPass, rStop, 's');
[num,den] = ellip(n,rStop,rPass,wn,'s');
ellip = tf(num,den);