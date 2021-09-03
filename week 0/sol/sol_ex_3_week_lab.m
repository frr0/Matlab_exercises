disp('***********************************************')
disp('*****************exercise_2_1*****************')
disp('***********************************************')

% interval limits
a = -5;
b = 5;

%function definition
f = @(x) 1./(1+x.^2); 

xplot = linspace(a,b);  % vector of points for plotting f and the polynomial interp.
f_xplot = f(xplot); %evaluate f

%loop over the degree
for n = 5:4:13
   x=linspace(a,b,n+1); %equally-spaced nodes

   %remove comment to use chebyshev node
   %t = -cos((2*(1:n+1)-1)*pi/(2*(n+1))); x = (b-a)/2*t+(b+a)/2; % Chebyshev  (uncomment to use these nodes)
  
   y = f(x);  %evaluate f at nodes
   c = polyfit(x,y,n);  %polynomail interpolation
   p = polyval(c,xplot);  %evaluate polynomial 
   plot(xplot,p,'b',xplot,f_xplot,'r',x,y,'ko','linewidth',3) %plotting

   pause
end
disp('********************************************** END **********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all
clear all
clc
disp('***********************************************')
disp('*****************exercise_2_3*****************')
disp('***********************************************')

a = -5;
b = 5;
f = @(x) 1./(1+x.^2);   % define the function
xplot = linspace(a,b);
f_xplot = f(xplot);

%loop over the polynomial degree
for n = 6:4:14
    x = linspace(a,b,n);
    y = f(x);

    %define the sline (with "not-a-knot" conditions)
    s = spline(x,y,xplot);  % s: vector containing the evalutions of the spline at the points stored in xplot 
    
    % plot: the nodes-evaluations, f, spline
    plot(x,y,'ko',xplot,f_xplot,'r',xplot,s,'b','linewidth',3)
    %compute the error, infinite-norm 
    err = norm(s-f_xplot,inf)
    pause
end    

disp('********************************************** END **********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all
clear all
clc
disp('***********************************************')
disp('*****************exercise_2_4*****************')
disp('***********************************************')
f = @(x) (1-x.^2).^(5/2);                   %f definition
fd = @(x) (5/2)*(1-x.^2).^(5/2-1).*(-2*x);  %f' definition

%compute f' at first and last nodes-> we will use this to define the "costrained" spline (s1), 
%in which the first derivative at the extremes of the interval is force to be equal to f'
f0 = fd(-1);  % f' at first point
fn = fd(1);   % f' at last point

% vector xplot: used to (1) plot the fucntion (2) compute the interpolation error
xplot = linspace(-1,1);
f_xplot = f(xplot);  %evaluate f at xplot

for k = 2:5
    n = 2^k;
    x = -1+2*(0:n)/n;  %points defining the sub-intervals
    y = f(x);          % f at x

    s = spline(x,y,xplot);            % not-a-knot spline
    s1 = spline(x,[f0 y fn],xplot);   % 1^st derivative constrain spline 
 
    % plottinf f s, s1
    figure(1)
    plot(x,y,'ko',xplot,f_xplot,'r',xplot,s,'b',xplot,s1,'g','linewidth',3)
    legend('data','f(x)','sspline not-a-knot','spline 1st der costr')
    pause

    % plotting errors
    figure(2)
    semilogy(xplot,abs(s-f_xplot),'b',xplot,abs(s1-f_xplot),'g','linewidth',3)
    legend('spline not-a-knot error','spline 1st der costr - error')

    %print errors
    err = norm(f_xplot-s,inf)
    err1 = norm(f_xplot-s1,inf)
    pause
end    

% the constrained spline (1st derivativ at limits) gives a more 
% accurate approximation than not-a-knot spline. In fact it satisfies
% 2 more conditions which link it to the function f, as well as 
% interpolation conditions.



disp('********************************************** END **********************************************')
pause