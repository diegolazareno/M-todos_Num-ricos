% Método de la Secante
matriz=1;
a=10;
b=20;
for i=1:10
    matriz(i,1)=i;
    matriz(i,2)=a;
    matriz(i,3)=b;
    matriz(i,4)=fun_nr_moy(a);
    matriz(i,5)=fun_nr_moy(b);
    matriz(i,6)=b-a;
    matriz(i,7)=b-((matriz(i,5)*matriz(i,6))/(matriz(i,5)-matriz(i,4)));
    matriz(i,8)=abs(((matriz(i,7)-matriz(i,3))/matriz(i,7))*100);
    a=b;
    b=matriz(i,7);
end 
matriz