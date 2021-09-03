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
inv_A_LU=inv(U)*inv(L)*P;
inv_A_inv=inv(A);

err=norm(inv_A_LU- inv_A_inv ,inf)