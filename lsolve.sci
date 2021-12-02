
// Exercice 2: TP 3 
//méthode résolution par  descent
n=10
A=rand(n,n)
b=rand(n,1)
L=tril(A)
function [x]= lsolve(L,b)
    x(1) = b(1)/L(1, 1);
    for i = 2 : n
        x(i) = (b(i) - L (i, 1 : (i - 1)) * x (1 : (i - 1))) /L(i, i);
    end

endfunction

[x]= lsolve(L,b)
