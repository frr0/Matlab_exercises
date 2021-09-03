
i=1;
%k_inf=zeros(3,1)

for n=5:10:15
    
    A=hilb(n);
    k_inf(i)=cond(A,inf);
    x_exact=ones(n,1);
    b=A+ones(n,1);
    
    x=A\b;
    
    err=norm( x_exact-x,inf)/norm(x_exact,inf);
    i=i+1;
end

[err' k_inf]