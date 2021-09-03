
p=30;
n=100;
%%
A=rand(n);

%% constr a matrix n x p
x=zeros(n,p)+

tic
[L,U,P]lu(A);

for i=1:p
    x(:,i)=U\(L\b_tilde);
    b_tilde=P*x(:,i);
end

toc


tic
x(:,1)=A\b;
for i=2:p
    x(:,i)=A\x(:,-1);


toc



