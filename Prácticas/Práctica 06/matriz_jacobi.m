% Función que contiene a la matriz de Jacobi
function matriz_jacobi=matriz_jacobi(x,y)
a(1,1)=2*x+y;
a(1,2)=x;
a(2,1)=4*(y^2);
a(2,2)=1+8*x*y;
matriz_jacobi=a;
end