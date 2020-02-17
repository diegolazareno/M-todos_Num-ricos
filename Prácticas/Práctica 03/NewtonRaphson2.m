% Método de Newton-Raphson
a=1;
c=input("Ingrese un valor para empezar la iteración");

for i=1:10
    % Iteración
    a(i,1)=i;
    % Raíz 
    a(i,2)=c;
    % Punto evaluado en la función 
    a(i,3)=fun_vel(c);
    % Punto evaluado en la función derivada
    a(i,4)=funprima_vel(c);
    % Algoritmo de Newton-Raphson: aproximación de la raíz
    a(i,5)=c-(a(i,3)/a(i,4));
    % Error
    a(i,6)=abs((a(i,5)-a(i,2))/a(i,5)*100);
    % Actualización de la raíz
    c=a(i,5);
end 
a