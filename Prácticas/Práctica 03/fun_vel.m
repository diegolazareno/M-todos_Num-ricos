% Función de Moy
function fun_vel=fun_vel(c)
fun_vel=9.8*79/c*(1-exp(-c*11/79))-46;
end 