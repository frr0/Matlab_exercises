%%n=100;
for i=1:n;
    for j=1:n;
        
        A(i,j)=max(i,j);
        
    end
end

%%
b=sum(A,2);
%%
[L,U,P]=lu(A);
%%
b_tilda=P*b;
y=L/b_tilda;

x=U\y;

err=norm(ones(n,1)-x,inf)/norm(ones(n,1),inf)