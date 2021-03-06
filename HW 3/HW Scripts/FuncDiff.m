% % % Function Differentiation Finder/Solver

% % Function Deriver

%%Derive single variable functions
syms x                           %defines symbol for function
f = sin(5*x);                    %define function to derive

diff(f)                          %takes 1st derivative (ex. 1)

diff(f,2)                        %takes 2nd derivative (ex. 2)

%%%Derive multiple variable functions
syms x u1 u2 u3 u4                         %define symbols for function

                    %define function to derive                        %derives the partial derivative ?f/?t

diff(x == u1*x-u3, x, u1, u2, u3, u4)
%%%

% % Solve First-Order Linear ODE
%example: ?y/?t = ty
%first, represent y by using 'syms' to create the symbolic function y(t)

syms y(t)                        %define symbols for first order ODE

ode(t) = diff(y(t), t) == t*y(t) %define function with '==', represent derivation with 'diff'         
ySol(t) = dsolve(ode)            %Solve the equation using 'dsolve'

% % Solve First order Linear ODE with condition (from above)
cond = y(0) == 2;                %define condition
ySol(t) = dsolve(ode,cond)       %solve with condition

clear all


