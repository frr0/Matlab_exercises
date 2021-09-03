clear all
clc
disp('***********************************************')
disp('*****************exercise_0_5*****************')
disp('***********************************************')
x = linspace(-pi,pi);
y = sin(x);
figure
plot(x,y,'b','linewidth',2)
title('sin(x)')

pause
close
%
x = linspace(-1,1);
y = exp(x);
figure
plot(x,y,'r','linewidth',2)
title('exp(x)')

pause
close
%
x = linspace(-pi,pi);
y = exp(-x.^2);
figure
plot(x,y,'g','linewidth',2)
title('exp(-x^2)')

pause
close
%
x = linspace(0.001,4*pi,1000);
y = sin(x)./x;
figure
plot(x,y,'m','linewidth',2)
title('sin(x)/x')

pause
close
%
%
x = linspace(0.001,2,10000);
y = x.*sin(1./x);
figure
plot(x,y,'k','linewidth',2)
title('xsin(1/x)')


disp('**********************************************END OF THE EXERCISE**********************************************')
clear all
close all
clc



disp('*****************exercise_0_6*****************')
disp('***********************************************')
x = linspace(0.1,100,10000);
y = sqrt((100*(1-0.01*x.^2).^2+0.02*x.^2)./((1-x.^2).^2+0.1*x.^2));

figure
plot(x,y,'linewidth',2)
pause

figure
loglog(x,y,'linewidth',2)

disp('**********************************************END OF THE EXERCISE**********************************************')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
clc
disp('*****************exercise_0_8*****************')
disp('***********************************************')

x = 1;    %define x
toll = 1.0e-10;   %define the tolerance
[v,i] = taylor_exp(x,toll)     % evaluate Taylor approximation at x
err = abs(v-exp(x))/abs(exp(x))   % compute the relative error




disp('**********************************************END OF THE EXERCISE**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


disp('***********************************************')
disp('*****************exercise_1_2*****************')
disp('***********************************************')
pause
clear all
close all
clc

% only secocond function of ex 2 session:  f2= (e^x-1)/x  when x--> 0

format long e    % use floating point rapresentation with 14 digits
n = 1:16;       % define the vector with the exponents n
x = 10.^(-n);	%define the vector of x approaching 0, infact x=10^(-n)  


% formulation affected by numerical cancellation
f2 = (exp(x)-1)./x; 

% formulation whitout numerical cancellation: use Taylor polynomial -> replace e^x
f2_ex = 0;
for i = 1:16
    f2_ex = f2_ex+x.^(i-1)/factorial(i);		%f2 using Taylor polynomial -> exp(x)=1+x+x^2/(2!)+..+x^i/(i!)+...+x^16/(16!)  
end    
er2 = abs(f2-f2_ex)./abs(f2_ex);         % remark: er2 is a vector, as f2, f2_ex,x
[x' f2' er2']

%plotting
figure
loglog(x,er2,'linewidth',2)		% plot using logarithmic scale for both  axes
% note that the error is increasing as x-->0  

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


% formulation affected by numerical cancellation
r = (sin(x+h)-sin(x))./h;
err = abs(cos(x)-r)/abs(cos(x));	%error: exact value of f'->cos(x)
loglog(h,err,'r','linewidth',2)		% plot using logarithmic scale for both  axes
pause
hold on
r2 = 2*sin(h/2).*cos(x+h/2)./h;   % prosthaphaeresis formulas-> alternative form for f'
err2 = abs(cos(x)-r2)/abs(cos(x));
loglog(h,err2,'g','linewidth',2)		% plot using logarithmic scale for both  axes


