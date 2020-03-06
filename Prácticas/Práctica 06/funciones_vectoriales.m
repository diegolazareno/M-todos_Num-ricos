% Función que evalúa las dos funciones en los puntos (x,y) dados
function funciones_vectoriales=funciones_vectoriales(x,y)
a(1,1)=(x^2)+(x*y)-5;
a(2,1)=y+(4*x*(y^2))-39;
funciones_vectoriales=a;
end