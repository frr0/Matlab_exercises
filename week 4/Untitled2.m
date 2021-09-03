clear all
clc
close all

format short e

i=1; %counter to store useful parameters
for n =100:100:500
   A=rand(n);
   conditioning(i)= cond(A);
   
   b=sum(A,2);
   
   %% solving  Ax=b using Pa=LU
   
   tic
   [L,U,P]=lu(A);
   x=U\(L\(P\b));
   
   err1=norm(ones(n,1)-x)/norm(ones(n,1));
t1=toc;


%%
tic
[Q,R]=qr(A);

x=R\(Q'*b);

 err1=norm(ones(n,1)-x)/norm(ones(n,1));
t2=toc;

%time ratio

time_ratio(i)t2/t1;

   i=i+1; 
end

[conditioning' err1' err2' time_ratio']


