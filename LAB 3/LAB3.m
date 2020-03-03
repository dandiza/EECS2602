%% Part 1
  
  % A)
  
  p = 2;
  t = -4:0.025:4;
  V_s = 0;
  a_o = 2/p;
  
for n = 1:2:40
    V_s = V_s + (4/pi*(n^2-1))*cos((t.*n*2*pi)/p); 
end

V_s = V_s + a_o;
plot(t,V_s)