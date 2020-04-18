% Estimación de la volatilidad implícita en el precio de una opción de
% compra europea sobre acciones observado en el mercado mediante el método
% de la bisección

%% Método de la bisección
% Matriz para guardar los resultados
matriz=1;

% Valores iniciales necesarios para la función black_scholes_call:
S=input("Ingresa el precio de la acción");
K=input("Ingresa el precio de ejercicio de la opción de compra");
r=input("Ingresa la tasa de interés libre de riesgo");
T=input("Ingresa el plazo para la expiración del contrato en años");
% Para comenzar la iteración se necesitan dos valores entre los que se crea
% que esté la volatilidad
a=input("Ingresa el valor a de la volatilidad");
b=input("Ingresa el valor b de la volatilidad");
prima=input("Ingrese la prima de la opción de compra");

% Iteración
for i=1:100
    
    % Punto medio entre a y b
    c=(a+b)/2;
    % Iteración
    matriz(i,1)=i;
    % Valor de a
    matriz(i,2)=a;
    % Valor de b
    matriz(i,3)=b;
    % Punto a evaluado en la función 
    matriz(i,4)=black_scholes_call(S,K,r,T,a,prima);
    % Punto b evauado en la función
    matriz(i,5)=black_scholes_call(S,K,r,T,b,prima);
    % Valor de c
    matriz(i,6)=c;
    % Punto c evaluado en la función
    matriz(i,7)=black_scholes_call(S,K,r,T,c,prima);
    
    % Multiplicación entre la función evaluada en a y en c
    % Lo que interesa de la multiplicación es el signo arrojado
    % Un signo positivo indica que se está por arriba o debajo del eje x
    % Un signo negativo indica que se está posicionado cerca de la raíz
    matriz(i,8)=matriz(i,4)*matriz(i,7);
  
    % Error de la aproximación en la raíz
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

%% Volatilidad implícita calculada
disp("La volatilidad implícita es de:")
disp(matriz(length(matriz),6))