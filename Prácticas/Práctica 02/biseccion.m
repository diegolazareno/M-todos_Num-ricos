% Método de la bisección
m=1;
a=13;
b=15;
for i=1:10
    if i==1
        c=(a+b)/2;
        m(i,1)=i;
        m(i,2)=a;
        m(i,3)=b;
        m(i,4)=fun(a);
        m(i,5)=fun(b);
        m(i,6)=c;
        m(i,7)=fun(c);
        m(i,8)=m(i,4)*m(i,7);
    else
        if m(i-1,8)>0
            a=c;
            b=b;
        else
            a=a;
            b=c;
        end 
        c=(a+b)/2;
        m(i,1)=i;
        m(i,2)=a;
        m(i,3)=b;
        m(i,4)=fun(a);
        m(i,5)=fun(b);
        m(i,6)=c;
        m(i,7)=fun(c);
        m(i,8)=m(i,4)*m(i,7);
    end 
end

for i=1:10
    if i>1
        m(i,9)=abs((m(i,6)-m(i-1,6))/m(i,6)*100);
    end 
end 
m