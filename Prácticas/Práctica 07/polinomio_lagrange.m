% Polinomios de Lagrange

% Temperatura en �C
x=[20,30,40,50,60,70];
% Presi�n de vapor del acetato de etilo en mmHg
y=[695,988,1367,1850,2451,3187];
% Gr�fica de las observaciones
%plot(x,y,"ro")

% Grado del polinomio
% S�lo puede interpolarse hasta un polinomio de grado 5, pues tenemos 6
% datos
grado=input("Ingrese el grado del polinomio");
temperatura=input("Ingrese el valor que desea interpolar")

% Ciclo para calcular el polinomio de Lagrange
sumatoria=0;
matriz=0; % Vector que guarda cada iteraci�n de i
for i=1:(grado+1)
    sumatoria=y(i);
    for j=1:(grado+1)
        if i~=j
        sumatoria=sumatoria*((temperatura-x(j))/(x(i)-x(j)));
        end
    matriz(i)=sumatoria;    
    end
end 
% Se suman los elementos de la matriz para dar la aproximaci�n
presion_vapor=sum(matriz) 