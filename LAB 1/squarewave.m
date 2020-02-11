
function x = squarewave(v,fr,k)
V_s=0;


t = linspace(0,1);
for n = 1:2:k
    V_s = V_s + (1/n)*sin(t.*n*2*pi*fr); 
end
V_f =(4*v/pi)* sin(2*pi*t.*fr);

Vs = (4*v/pi)*V_s;
subplot(3,1,1)
hold on
plot(t,V_f)
plot(t,Vs);
legend('V_f','Vs');
title('Squarewave');
xlabel('Time (t)');
ylabel('Amplitude (V)');


P_s = (V_f).^2;
subplot(3,1,2)
hold on
plot(t,P_s);
legend('P_s');
title('Instantaneous Power');
xlabel('Time (t)');
ylabel('Power (W)');
end
