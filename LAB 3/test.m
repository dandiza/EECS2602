% 3A
figure()
figure(7)
r1 = 10;
rl = 100;
c = 0.0001;
s1 = tf(1, [(r1 * c) (1 + r1 / rl)]);
bode(s1, {0.001, 100});
title('H(w)');
grid;



