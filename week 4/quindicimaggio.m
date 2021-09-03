n=100;

B= diag(10*ones(n,1)) + diag(-5*ones(n-1,1),-1)+ diag(5*ones(n-1,1),1);
determinant=det(B)

A=B'*B; %symmetric

k_inf=cond(A,inf)

R=chol(A);

R_inv=inv(R);

%invers of A using chol
inverse_c=R_inv=inv(R);
invesre_A=inv(A);

err__inv=norm,(inverse__c-inverse_A, inf)/norm(inv(A))

%%soleAx=b

b=sum(A,2);

y=R'\b;
xR\y;

err_ls=norm(x -ones(0,1), inf)/=norm(x ones(0,1), inf)








