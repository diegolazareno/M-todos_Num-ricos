% Función de la velocidad para el Método de la Secante de Moy
function fun_nr_moy=fun_nr_moy(c)
fun_nr_moy=(9.8*79/c)*(1-exp(-c*11/79))-46;
end 