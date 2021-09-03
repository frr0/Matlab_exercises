%exercise session 0: matrices and vectors manipulation,
% plots of functions and Matlab programming language
clear all
clc
disp('***********************************************')
disp('*****************exercise_0_1*****************')
disp('***********************************************')

x = [1:-0.1:0]
x([1 4 3]) 
disp('extracts components 1, 4 and 3 of vector x')
pause
%
x = [1:-0.1:0]
x([1:2:7 10])=zeros(1,5) 
disp('places components 1, 3, 5, 7 and 10 of vector x equal to 0') 
pause
%
x = [1:-0.1:0]
x([1 2 5])=[0.5*ones(1,2) -0.3] 
disp('places components 1, 2 e 5 f vector x equal to 0.5, 0.5 and  -0.3, respectively')
pause
%
x = [1:-0.1:0]
y = x(end:-1:1) 
disp('defines a vector y, whose components are  those of vector x in reverse order')

disp('**********************************************END OF THE EXERCISE**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc
disp('***********************************************')
disp('*****************exercise_0_2*****************')
disp('***********************************************')

A = [1:4;5:8;9:12] % A is 3x4 matrix
size(A) 
disp('it gives rows and columns numbers of matrix A')
pause

A(1:2,4)
disp('extracts the submatrix of A made by the entries of rows 1 and 2 and column 4')
pause

A(:,3)
disp('extracts the submatrix of A made by all the rows of A and column 3')
pause

A(1:2,:)
disp('extracts the submatrix of A made by rows 1 and 2 and all the columns of A')
pause

A(:,[2 4])
disp('extracts the submatrix of A made by all the rows of A and columns 2 and 4')
pause

A([2 3 3],:)
disp('extracts the submatrix of A made by rows 2 and 3 (repeated twice) and all columns of A')
pause


A(3,2) = A(1,1) 
disp('places entry (3,2) of the matrix equal to entry (1,1)')
pause

A(1:2,4) = zeros(2,1) 
disp('places the elements of the submatrix of A made by elements of rows 1 and 2 and column 4, equal to zero')
pause

A = [1:4;5:8;9:12]
A(2,:) = A(2,:)-A(2,1)/A(1,1)*A(1,:) 
disp( 'redifine the elements of 2nd row of A as linear combination of elements of 2nd and 1st rows' )
disp('in particular, subtracts from element of 2ndrow the elements of 1st row multiplied by the value A(2,1)/A(1,1)')


disp('**********************************************END OF THE EXERCISE**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc
disp('***********************************************')
disp('*****************exercise_0_3*****************')
disp('***********************************************')

A = [1:6;5:10;9:14;15:20]
%a)
B = A(:,6:-1:1)
pause
%b)
B = A(:,2:2:end)
pause
%c)
B = A(1:2:end,:)
pause
%d)
B = A([1 4 3],[5 2])
pause
%e)
diag(A)

disp('**********************************************END OF THE EXERCISE**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc
disp('***********************************************')
disp('*****************exercise_0_4*****************')
disp('***********************************************')

D = diag(5*ones(10,1));
CS = diag(3*ones(9,1),1);
CI = diag(-1*ones(9,1),-1);
B = D+CS+CI
B([5 8],[6 9]) = 2

disp('**********************************************END OF THE EXERCISE**********************************************')
pause%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
