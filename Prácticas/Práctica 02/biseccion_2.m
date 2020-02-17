% Método de la bisección 
% Matriz para guardar los resultados
matriz=1;
% Se necesitan dos puntos arbitrarios para iniciar la iteración
a=input("Ingresa el valor de a");
b=input("Ingresa el valor de b");

for i=1:10
    % Punto medio entre a y b
    c=(a+b)/2;
    % Iteración
    matriz(i,1)=i;
    % Valor de a
    matriz(i,2)=a;
    % Valor de b
    matriz(i,3)=b;
    % Punto a evaluado en la función 
    matriz(i,4)=fun_vel(a);
    % Punto b evauado en la función
    matriz(i,5)=fun_vel(b);
    % Valor de c
    matriz(i,6)=c;
    % Punto c evaluado en la función
    matriz(i,7)=fun_vel(c);
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
matriz