
format long e
n=100;
p = n:-1:1

p(ones(n,1), : )


A =p(ones(n,1) , : )-diag(ones(n-1,1),-1)


[S, lambda]=eig(A)

Ap=A;

Ap(n, :)=Ap(n, :)+ 1.0e-10

lambdap=eig(Ap);

k=cond(S);

M=k*norm(A-Ap);

error=abs(sort(diag(lambda))- sort(lambdap))


plot (real(diag(lambda)), imag diag(lambda))