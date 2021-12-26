
l=3
c=2
A=sprand(l,c,0.6)
function [AA,JA,IA] = CSR(A)
AA = zeros(l*c);
JA = zeros(l*c);
IA = zeros(l+1);
pointeur = 1;
for i = 1 : l
    IA(i) = pointeur;
    for j = 1 : c
        if A(i,j) ~= 0 then
            AA(pointeur) = A(i,j);
            JA(pointeur) = j;
            pointeur = pointeur+1;
        end
    end
end
IA(l+1) = pointeur;

é
endfunction
 x=rand(l,1)
function [P,AA,JA,IA] = produit(A,x)
[AA,JA,IA] = CSR(A);
l = size(x)(1);
c = size(A)(1);
P = zeros(l,1);

for i = 1 : c
    for j = IA(i) : IA(i+1)-1
        P(i) = P(i) + AA(j) * x(JA(j));
    end
end

endfunction
