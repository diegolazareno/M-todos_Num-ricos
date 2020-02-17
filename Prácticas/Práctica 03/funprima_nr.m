% Función de la velocidad derivada para el Método de Newton-Raphson
function funprima_nr=funprima_nr(c)
funprima_nr=(-9.8*82/((c)^2))*(1-exp(-11*c/82))+(9.8*82/c)*((11/82)*exp(-11*c/82));
end 