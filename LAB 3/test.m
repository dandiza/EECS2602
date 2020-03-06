  p = 2;
  t = -10:0.1:10;
  V_s = 0;
  a_o = 2/pi;
  w_o = pi;
  
for n = 1:1:40
     V_s = V_s + (4/(pi*(1-4*n^2)))*exp(t.*w_o*n*1i); 
end

figure(1)
V_s = V_s + a_o;
stem(V_s)
xlabel("Time");
ylabel("X(t)");
