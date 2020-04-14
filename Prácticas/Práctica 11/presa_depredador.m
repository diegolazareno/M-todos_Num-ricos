% Sistema Presa-Depredador
a=0.4; %parámetro a
b=-0.22; %parámetro b
c=-0.3; %parámetro c
d=0.5; %parámetro d
%condiciones iniciales en el vector x0
x0=[4,3]; %4 es el valor inicial de x, 3 es valor inicial de y
tf=1; %tiempo final, tf

fg=@(t,x) [a*x(1)*+b*x(1)*x(2);c*x(2)+d*x(1)*x(2)];
[t,x]=ode45(fg,[0,tf],x0);
plot(t,x)
grid on
xlabel('t')
ylabel('Presa,Depredador');
title('Sistema Presa-Depredador')