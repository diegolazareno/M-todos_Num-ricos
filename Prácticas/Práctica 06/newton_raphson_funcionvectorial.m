% Aproximaciones iniciales para las soluciones (x,y) del sistema de ecuaciones
x=input("Ingrese su valor inicial de x para empezar la aproximación");
y=input("Ingrese su valor inicial de y para empezar la aproximación");

% Matriz que guarda las aproximaciones
aproximaciones=1;

% Ciclo para aproximar las soluciones al sistema de ecuaciones
for i=1:10
    operacion_matricial=inv(matriz_jacobi(x,y))*funciones_vectoriales(x,y);
    aproximaciones(1,1)=x-operacion_matricial(1,1);
    aproximaciones(2,1)=y-operacion_matricial(2,1);
    x=aproximaciones(1,1);
    y=aproximaciones(2,1);
end 

disp("La solución para x es:")
disp(x)
disp("La solución para y es:")
disp(y)