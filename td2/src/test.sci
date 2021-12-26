data =[10:10:100]
for n = data 

i=n/10

A=rand(n,n) 
tic()

[L,D,LT] = ldl(A)
t1(i)= toc()

tic()
[L,U] = f(A)
t2(i)=toc()

end

plot2d(data,[t1 t2] )
legend(["LDL" "LU"],2)
