% M�todo de Euler

x=input("Ingrese el valor inicial de x");
y=input("Ingrese el valor inicial de y");
h=input("Ingrese el tama�o del paso h");
xl=input("Ingrese el valor final de x");
% Iteraciones
n=(xl-x)/h;

% Ciclo for para estimar la curva soluci�n de la EDO
for i=1:n        
    % Pendiente
    k=ode(x(i),y(i));
    % x+h
    x(i+1)=x(i)+h;
    % Estimaci�n de y
    y(i+1)=y(i)+k*h;
end 

% Soluci�n anal�tica
y_analitica=1;
for i=1:length(x)
    y_analitica(i)=9.9*exp(0.75*(x(i)^4)-5*x(i));
end 

% Visualizaci�n 
% Visualizaci�n 
plot(x,y)
hold on
plot(x,y_analitica)
hold off
legend({'M�todo de Euler','Soluci�n analitica'})