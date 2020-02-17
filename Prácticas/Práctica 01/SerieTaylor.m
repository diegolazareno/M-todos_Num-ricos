% Aproximación del seno de un ángulo mediante series de Taylor
% Matriz para almacenar los resultados
a=1;
angulo=input("Ingrese el ángulo que desea aproximar")
valor_verdadero=sin(angulo)
angulo_anterior=0;

for n=1:10
    a(n,1)=n; % Iteración
    n=n-1;
    angulo_actual=angulo_anterior+(((-1)^n)/(factorial(2*n+1)))*(angulo^(2*n+1));
    
    n=n+1;
    a(n,2)=angulo_actual;  % Aproximación
    angulo_anterior=angulo_actual;
end

for n=1:10
    a(n,3)=abs(valor_verdadero-a(n,2)); % Error verdadero
    a(n,4)=abs(((valor_verdadero-a(n,2))/valor_verdadero)*100); % Error verdadero relativo %
    
    if n>1
        a(n,5)=abs((a(n,2)-a(n-1,2))/a(n,2)*100); % Error relativo aproximado %
    end 
end

a