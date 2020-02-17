% M�todo de Newton-Raphson
a=1;
c=input("Ingrese un valor para empezar la iteraci�n");

for i=1:10
    % Iteraci�n
    a(i,1)=i;
    % Ra�z 
    a(i,2)=c;
    % Punto evaluado en la funci�n 
    a(i,3)=fun_vel(c);
    % Punto evaluado en la funci�n derivada
    a(i,4)=funprima_vel(c);
    % Algoritmo de Newton-Raphson: aproximaci�n de la ra�z
    a(i,5)=c-(a(i,3)/a(i,4));
    % Error
    a(i,6)=abs((a(i,5)-a(i,2))/a(i,5)*100);
    % Actualizaci�n de la ra�z
    c=a(i,5);
end 
a