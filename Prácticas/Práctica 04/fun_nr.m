% Funci�n de la velocidad para el M�todo de la Secante
function fun_nr=fun_nr(c)
fun_nr=(9.8*82/c)*(1-exp(-c*11/82))-48;
end 