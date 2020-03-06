% Método de Jacobi y Gauss-Seidel 

% Se ingresa una matriz cuadrada
a=input("Ingrese la matriz");
% Longitud de la matriz
len=length(a); 
% Se rellenan 3 matrices (de la longitud de a) con 0's 
superior=zeros(len);
diagonal=zeros(len);
inferior=zeros(len);

% Inputs necesarios para realizar el Método de Jacobi y Gauss-Seidel
vector_r=input("Ingrese el vector columna de resultados");
vector_valores_iniciales_j=input("Ingrese el vector columna con valores iniciales");
vector_valores_iniciales_g=vector_valores_iniciales_j;

% Ciclo para obtener la parte superior a la diagonal de la matriz
for i=1:(len-1)
    for j=1:len
        if j>i
            superior(i,j)=a(i,j);
        else 
            continue
        end 
    end 
end 
superior

% Ciclo para obtener la diagonal de la matriz 
for i=1:len
    diagonal(i,i)=a(i,i);
end 
diagonal

% Ciclo para obtener la parte inferior a la diagonal de la matriz
for i=2:len
    for j=1:len
        if j<i
            inferior(i,j)=a(i,j);
        else
            continue 
        end 
    end 
end 
inferior

% Método de Jacobi 
for i=1:50
    jacobi=inv(diagonal)*(vector_r-(inferior+superior)*vector_valores_iniciales);
    vector_valores_iniciales_j=jacobi;
end 
jacobi

% Método de Gauss-Seidel
for i=1:50
    gauss_seidel=inv(diagonal+inferior)*(vector_r-superior*vector_valores_iniciales);
    vector_valores_iniciales_g=gauss_seidel;
end 
gauss_seidel