%taylor series expander/solver

syms x
f = 1/(5 + 4*cos(x));
T = taylor(f, 'Order', 8)

clear all
%returns:
%T = (49*x^6)/131220 + (5*x^4)/1458 + (2*x^2)/81 + 1/9
%taylor('function to expand','derivative order', 'number of expansions')

%y[n+1] = F'(Xstar)*y(n)
%y[n] = (lambda^n)*y[0]