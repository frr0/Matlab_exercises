%exercise session 1: numerical cancellation
clear all
close all
clc
format short e
disp('***********************************************')
disp('*****************exercise_1_1*****************')
disp('***********************************************')
a = 1.483593;
b = 1.484111;
s = a-b
a_ = 1.4836;
b_ = 1.4841;
s_ = a_-b_
er = abs(s-s_)/abs(s)	%error
disp('**********************************************END OF THE EXERCISE**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
clc
format long e
disp('***********************************************')
disp('*****************exercise_1_2*****************')
disp('***********************************************')

n = 1:16;
x = 10.^(-n);
f1 = (1-cos(x))./x.^2;
f1_ex = 1/2*(sin(x/2)./(x/2)).^2;
er1 = abs(f1-f1_ex)./abs(f1_ex);
[x' f1' er1']
figure
loglog(x,er1,'linewidth',2)		% plot using logarithmic scale for both  axes

pause
clear all
close all
clc
format long e

n = 1:16;
x = 10.^(-n);
f2 = (exp(x)-1)./x;
f2_ex = 0;
for i = 1:16
    f2_ex = f2_ex+x.^(i-1)/factorial(i);		%f2 using Taylor polynomial -> exp(x)=1+x+x^2/(2!)+..+x^i/(i!)+...+x^16/(16!)  
end    
er2 = abs(f2-f2_ex)./abs(f2_ex);
[x' f2' er2']
figure
loglog(x,er2,'linewidth',2)		% plot using logarithmic scale for both  axes

pause
clear all
close all
clc
format long e

n = 1:16;
x = 10.^(-n);
f3 = (1-sqrt(1-x.^2));
f3_ex = x.^2./(1+sqrt(1-x.^2));
er3 = abs(f3-f3_ex)./abs(f3_ex);
[x' f3' er3']	
figure
loglog(x,er3,'linewidth',2)		% plot using logarithmic scale for both  axes

pause
clear all
close all
clc
format long e

n = 1:16;
x = 10.^(-n);
f4 = ((x+1).^2-1)./x;
f4_ex = x+2;
er4 = abs(f4-f4_ex)./abs(f4_ex);
[x' f4' er4']
figure
loglog(x,er4,'linewidth',2)

disp('**********************************************END OF THE EXERCISE**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
close all
clc
disp('***********************************************')
disp('*****************exercise_1_3*****************')
disp('***********************************************')

m = 40;
x = zeros(m,1);
x(1) = 2;
for n = 2:m
    x(n) = 2^(n-1/2)*sqrt(1-sqrt(1-4^(1-n)*x(n-1)^2));
end
relative_error = abs(pi-x)/abs(pi);
semilogy(1:m,relative_error,'linewidth',2)		% plot using logarithmic scale for y-axis
pause
% alternative formulation
m = 40;
x = zeros(m,1);
x(1) = 2;
for n = 2:m
    x(n) = x(n-1)*sqrt(2/(1+sqrt(1-4^(1-n)*x(n-1)^2)));
end
relative_error = abs(pi-x)/abs(pi);
semilogy(1:m,relative_error,'linewidth',2)		% plot using logarithmic scale for y-axis
disp('**********************************************END OF THE EXERCISE**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
close all
clc
disp('***********************************************')
disp('*****************exercise_1_4*****************')
disp('***********************************************')

x = pi/4;
k = 1:50;
h = 2.^(-k);
r = (sin(x+h)-sin(x))./h;
err = abs(cos(x)-r)/abs(cos(x));	%error: exact value of f'->cos(x)
loglog(h,err,'r','linewidth',2)		% plot using logarithmic scale for both  axes
pause
hold on
r2 = 2*sin(h/2).*cos(x+h/2)./h;   % prosthaphaeresis formulas-> alternative form for f'
err2 = abs(cos(x)-r2)/abs(cos(x));
loglog(h,err2,'g','linewidth',2)		% plot using logarithmic scale for both  axes
