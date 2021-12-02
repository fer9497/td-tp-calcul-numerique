// Exercice 2: TP 3 
//méthode resolution par remontée
n=10
A=rand(n,n)
b=rand(n,1)
U=triu(A)
function [x]= usolve(U,b)
    x(n) = b(n)/U(n, n);

    for i= n - 1 : -1 :1
        x(i) =( b(i) - U(i,(i+1):n)*x((i + 1):n) )/U(i,i);
    end

endfunction
[x]= usolve(U,b)
