
Tend = 10;
tspan = linspace(0,10,100);
initial = [0; 0; 0; 0; 0; 0];
[t,y] = ode45(@func,tspan,initial);
plot(t,y(:,1))
hold on
plot(t,y(:,3))
hold off
function dxdt = func(~,y)
m1 = 10;
m2 = 100;
c1 = 100;
c2 = 1000;
k1 = 1e4;
k2 = 1e5;
f = 5;
K1 = (k1)/m1;
C1 = (c1)/m1;
K2 = (k1)/m2;
C2 = (c1)/m2;
K = (k1+k2)/m2;
C = (c1+c2)/m2;
F = (f)/m1;
%%x1 = y(1),  x1_dot=y(2),  x2=y(3), x2_dot=y(4)
dxdt = zeros(6,1);
dxdt(1) = y(2);
dxdt(2) = F+(K1*y(3))+(C1*y(4))-(K1*y(1))-(C1*y(2));
dxdt(3) = y(4);
dxdt(4) = (K2*y(1))+(C2*y(2))-(K*y(3))-(C*y(4));
end


