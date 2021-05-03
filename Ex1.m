clear all
close all
clc

format short e

a=1.483593;
b=1.484111;

c=1.4836;
d=1.4841;

s=a-b
s1=c-d


er = abs(s-s1)/abs(s)	%error
