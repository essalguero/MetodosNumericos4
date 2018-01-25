f = @(t,y) 10*(2 - y);
tspan = [0 3];
h1 = 0.3;
h2 = 0.15;
h3 = 0.05;
y0 = 1;

sol = @(t) 2 -exp(-10*t); 

tspan = [0, 3];

[t1, y1] = feuler(f, tspan, y0, (tspan(2) - tspan(1))/h1);
[t2, y2] = feuler(f, tspan, y0, (tspan(2) - tspan(1))/h2);
[t3, y3] = feuler(f, tspan, y0, (tspan(2) - tspan(1))/h3);


figure
plot(t1, y1, t1, sol(t1))
legend('aprox', 'exacta');
figure
plot(t2, y2, t2, sol(t2))
legend('aprox', 'exacta');
figure
plot(t3, y3, t3, sol(t3))
legend('aprox', 'exacta');

