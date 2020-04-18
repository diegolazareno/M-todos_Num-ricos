% Ecuación de Black and Scholes para calcular el valor teórico de una
% opción de compra europea (Call Europeo) sobre acciones que no pagan
% dividendos
function black_scholes_call=black_scholes_call(S,K,r,T,V,prima)
black_scholes_call=(S*normcdf((log(S/K)+(r+(V^2)/2)*T)/(V*sqrt(T)))-(K*exp(-r*T))*normcdf((log(S/K)+(r-(V^2)/2)*T)/(V*sqrt(T))))-prima;
end 