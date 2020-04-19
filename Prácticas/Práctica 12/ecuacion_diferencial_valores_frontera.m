% Método del disparo con ode45
% El objetivo para el tiempo final T(x=5) es 204ºC

% Vectores para realizar la interpolación
valores_propuestos=[25;30];
temperaturas=0;

%condiciones iniciales
x0=[54,valores_propuestos(1,1)]; % 54 es la temperatura inicial, 25 es el valor propuesto
tf=5; %tiempo final
f=@(t,x) [x(2);-0.014*(24-x(1))]; 
[t,x]=ode45(f,[0,tf],x0);
temperaturas(1,1)=x(length(x),1);

%condiciones iniciales
x0=[54,valores_propuestos(2,1)]; % 54 es la temperatura inicial, 30 es el valor propuesto
tf=5; %tiempo final
f=@(t,x) [x(2);-0.014*(24-x(1))]; 
[t,x]=ode45(f,[0,tf],x0);
temperaturas(2,1)=x(length(x),1);

% Interpolación
p=polyfit(valores_propuestos,temperaturas,1);
p

% Despeje para conocer el valor propuesto que genera una temperatura de 204 en T(x=5)
y=(204-p(2))/p(1);
disp("El valor propuesto que satisface la condición en la frontera es:")
disp(y)

% Comprobación
x0=[54,y]; % 54 es la temperatura inicial, "y" es el valor propuesto
tf=5; %tiempo final
f=@(t,x) [x(2);-0.014*(24-x(1))]; 
[t,x]=ode45(f,[0,tf],x0);
disp("Cuando el valor propuesto es de 27.2985 la temperatura en T(x=5) es:")
disp(x(length(x),1))

% Visualización
plot(t,x)
grid on
xlabel('t')
ylabel('Temperatura,Valores Propuestos');
title('Ecuación Diferencial con Valores en la Frontera')