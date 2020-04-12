% Integración mediante el método de los trapecios

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

% Método de los trapecios
suma=2*sum(tabla(2:(length(tabla)-1),2))+tabla(1,2)+tabla(length(tabla),2);
integral_trapecios=suma*((b-a)/(2*n));

disp("La integral por el método de trapecios es:")
disp(integral_trapecios)