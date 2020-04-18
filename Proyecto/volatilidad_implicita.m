% Estimaci�n de la volatilidad impl�cita en el precio de una opci�n de
% compra europea sobre acciones observado en el mercado mediante el m�todo
% de la bisecci�n

%% M�todo de la bisecci�n
% Matriz para guardar los resultados
matriz=1;

% Valores iniciales necesarios para la funci�n black_scholes_call:
S=input("Ingresa el precio de la acci�n");
K=input("Ingresa el precio de ejercicio de la opci�n de compra");
r=input("Ingresa la tasa de inter�s libre de riesgo");
T=input("Ingresa el plazo para la expiraci�n del contrato en a�os");
% Para comenzar la iteraci�n se necesitan dos valores entre los que se crea
% que est� la volatilidad
a=input("Ingresa el valor a de la volatilidad");
b=input("Ingresa el valor b de la volatilidad");
prima=input("Ingrese la prima de la opci�n de compra");

% Iteraci�n
for i=1:100
    
    % Punto medio entre a y b
    c=(a+b)/2;
    % Iteraci�n
    matriz(i,1)=i;
    % Valor de a
    matriz(i,2)=a;
    % Valor de b
    matriz(i,3)=b;
    % Punto a evaluado en la funci�n 
    matriz(i,4)=black_scholes_call(S,K,r,T,a,prima);
    % Punto b evauado en la funci�n
    matriz(i,5)=black_scholes_call(S,K,r,T,b,prima);
    % Valor de c
    matriz(i,6)=c;
    % Punto c evaluado en la funci�n
    matriz(i,7)=black_scholes_call(S,K,r,T,c,prima);
    
    % Multiplicaci�n entre la funci�n evaluada en a y en c
    % Lo que interesa de la multiplicaci�n es el signo arrojado
    % Un signo positivo indica que se est� por arriba o debajo del eje x
    % Un signo negativo indica que se est� posicionado cerca de la ra�z
    matriz(i,8)=matriz(i,4)*matriz(i,7);
  
    % Error de la aproximaci�n en la ra�z
    if i>1
        matriz(i,9)=abs((matriz(i,6)-matriz(i-1,6))/matriz(i,6)*100);
    end 
    
    % Condicional para actualizar los valores de a y b dado el signo
    if matriz(i,8)>0
        a=c;
        b=b;
    else
        a=a;
        b=c;
    end 
end 

%% Volatilidad impl�cita calculada
disp("La volatilidad impl�cita es de:")
disp(matriz(length(matriz),6))