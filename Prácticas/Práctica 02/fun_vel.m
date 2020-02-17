% Función de velocidad
% Encontrar las raíces de la función analíticamente es imposible, para ello
% se deben usar métodos numéricos
function fun_vel=fun_vel(c)
fun_vel=9.8*79/c*(1-exp(-c*11/79))-46;
end 