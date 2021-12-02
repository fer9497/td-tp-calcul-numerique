
//produit matrice * matrice 
//matrice * matrice algorithme 7 avec trois boucle 
tic();
function [C] = matmat3b(A,B)
    C = zeros(size(A,'r'),size(B,'c')); 
   for i=1:size(A,'r')
        for j=1: size(B,'c')
            for k= 1: size(A,'c')
            //for k=1:size(B,'r')
                C(i,j) = A(i,k)*B(k,j) + C(i,j);
            end
        end
    end
endfunction
temps=toc();
//algoritheme 8 avec 2 boucles 
tic();
function [C] = matmat2b(A,B)
    C = zeros(size(A,'r'),size(B,'c'));
    for i=1:size(A,'r')
        for j=1:size(B,'c')
            C(i,j) = A(i,[1:size(A,'c')])*B([1:size(B,'r')],j) + C(i,j);
        end
    end
endfunction
temps0=toc();
//algorithme 9 avec une seul boucle 
tic();

function [C] = matmat1b(A,B)
    C = zeros(size(A,'r'),size(B,'c'));
    for i=1:size(A,'r')
        C(i,[1:size(B,'c')]) = A(i,[1:size(A,'c')])*B + C(i,[1:size(B,'c')]);
    end
endfunction
temps1=toc();



