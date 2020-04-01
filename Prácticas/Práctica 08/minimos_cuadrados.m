% M�todo de M�nimos Cuadrados: Modelo Lineal

% Vector columna con la temperatura en �C
x=[20;30;40;50;60;70]
% Vector columna con la presi�n de vapor en mmHg
y=[695;988;1367;1850;2451;3187]
% Se intercambia la segunda columna de la matriz de unos por los valores de
% x
a=ones(6,2)
a(:,2)=x 

% Soluci�n anal�tica en la forma matricial
inv(a'*a)*a'*y

% Funci�n que ajusta polinomios
% Se ajusta un polinomio de grado 1
p=polyfit(x,y,1) 

% Los comandos hold on y hold off son para que me muestre una s�la gr�fica
hold on 
plot(x,y,"ro","markersize",4,"markerfacecolor","r") % gr�fica de los puntos. Tama�o 4 y rellenas de rojo
z=@(x) polyval(p,x); % recta ajustada
fplot(z,[x(1),x(end)]) % gr�fica
xlabel("x")
ylabel("y")
grid on 
title("Polinomio aproximado de grado 1")
hold off

estimaciones=1;
for i=1:10
    % Temperatura
    estimaciones(i,1)=i*10;
    % Presi�n de vapor estimada
    estimaciones(i,2)=p*[i*10;1];
end 
estimaciones 