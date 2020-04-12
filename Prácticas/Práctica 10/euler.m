% Método de Euler

x=input("Ingrese el valor inicial de x");
y=input("Ingrese el valor inicial de y");
h=input("Ingrese el tamaño del paso h");
xl=input("Ingrese el valor final de x");
% Iteraciones
n=(xl-x)/h;

% Ciclo for para estimar la curva solución de la EDO
for i=1:n        
    % Pendiente
    k=ode(x(i),y(i));
    % x+h
    x(i+1)=x(i)+h;
    % Estimación de y
    y(i+1)=y(i)+k*h;
end 

% Solución analítica
y_analitica=1;
for i=1:length(x)
    y_analitica(i)=9.9*exp(0.75*(x(i)^4)-5*x(i));
end 

% Visualización 
% Visualización 
plot(x,y)
hold on
plot(x,y_analitica)
hold off
legend({'Método de Euler','Solución analitica'})