% Integración mediante el método de Simpson 1/3

% Número de trapecios
n=input("Ingrese el número de particiones para su intervalo b-a");
% Límite inferior de integración
a=0;
% Límite superior de integración
b=12;
% Altura de cada trapecio
h=(b-a)/n;

% Tabla con los valores x y y
tabla=1;
for i=1:(n+1)
    tabla(i,1)=a;
    tabla(i,2)=integral(a);
    a=a+h;
end 

% Resetear el valor de a
a=0;

% Método de Simpon 1/3
suma=tabla(1,2)+tabla(length(tabla),2)+4*sum(tabla(2:2:(length(tabla)-1),2))+2*sum(tabla(3:2:(length(tabla)-1),2));
integral_simpson=suma*((b-a)/(3*n));

disp("La integral por el método de Simpson 1/3 es:")
disp(integral_simpson)