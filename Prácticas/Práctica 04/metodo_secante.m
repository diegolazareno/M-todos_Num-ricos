% M�todo de la Secante
matriz=1;
a=6;
b=15;
for i=1:10
    % Iteraci�n
    matriz(i,1)=i;
    % Valor de a
    matriz(i,2)=a;
    % Valor de b
    matriz(i,3)=b;
    % Funci�n evaluada en a
    matriz(i,4)=fun_nr(a);
    % Funci�n evaluada en b
    matriz(i,5)=fun_nr(b);
    % Incremento h
    matriz(i,6)=b-a;
    % Aproximaci�n de la ra�z
    matriz(i,7)=b-((matriz(i,5)*matriz(i,6))/(matriz(i,5)-matriz(i,4)));
    % Error
    matriz(i,8)=abs(((matriz(i,7)-matriz(i,3))/matriz(i,3))*100);
    % Actualizaci�n de t�rminos
    a=b;
    b=matriz(i,7);
end 
matriz