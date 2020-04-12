% Integraci�n mediante el m�todo de los trapecios

% N�mero de trapecios
n=input("Ingrese el n�mero de particiones para su intervalo b-a");
% L�mite inferior de integraci�n
a=0;
% L�mite superior de integraci�n
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

% M�todo de los trapecios
suma=2*sum(tabla(2:(length(tabla)-1),2))+tabla(1,2)+tabla(length(tabla),2);
integral_trapecios=suma*((b-a)/(2*n));

disp("La integral por el m�todo de trapecios es:")
disp(integral_trapecios)