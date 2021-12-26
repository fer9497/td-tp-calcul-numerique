
//A=rand(3,3)
function [L,D,LT] = ldl(A)
n = size(A)(1)
v = zeros(n,1)
for j= 2 : n
    for i = 1:j-1
     v(i)=A(j,i)*A(i,j)
    end 
    A(j,j)=A(i,j)-A(j,1:j-1)*v(1:j-1)   
    A(j+1:n,j)=[A(j+1:n,j)-A(j+1:n,1:j-1)*v(1:j-1)*1/A(j,j)]
end
 D=diag(diag(A)); 
 L=tril(A)-D +eye(n,n);
LT=L'

endfunction


