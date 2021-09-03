clear all
close all
clc



n=1:16;

x = 10.^(-n);
x';
f1 = (1-cos(x))./x.^2;

f1_ex = 1/2*(sin(x/2)./(x/2)).^2;

er1 = abs(f1-f1_ex)./abs(f1_ex);

result=[x' f1']