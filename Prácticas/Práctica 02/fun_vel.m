% Funci�n de velocidad
% Encontrar las ra�ces de la funci�n anal�ticamente es imposible, para ello
% se deben usar m�todos num�ricos
function fun_vel=fun_vel(c)
fun_vel=9.8*79/c*(1-exp(-c*11/79))-46;
end 