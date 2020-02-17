% Función de Moy derivada
function funprima_vel=funprima_vel(c)
funprima_vel=(-9.8*79/((c)^2))*(1-exp(-11*c/79))+(9.8*79/c)*((11/79)*exp(-11*c/79));
end 