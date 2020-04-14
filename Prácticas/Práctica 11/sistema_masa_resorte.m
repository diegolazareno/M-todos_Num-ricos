% Sistema Masa-Resorte
%condiciones iniciales
x0=[1,2]; % 1 es posición inicial, 2 es velocidad inicial
tf=1; %tiempo final

f=@(t,x) [x(2);(-0.7*x(2)-39*x(1))/1.7]; 
[t,x]=ode45(f,[0,tf],x0);
plot(t,x)
grid on
xlabel('t')
ylabel('Posición,Velocidad');
title('Sistema Masa-Resorte')