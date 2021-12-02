// Exercice 7: Matrice de taille n=3

n=3
//matrice carré A de taille n avec la fonction rand():
A=rand(n,n)

//vecteur colonne xex de taille n avec la fonction rand():
xex=rand(n,1)

//calcule le produit de A*xex:
b=A*xex

//résoudre le systeme b=A*xex 

x=A\b

//calcule erreur avant et erreur arriére

err =norm(xex-x)/norm(xex)

relres=norm(b-A*x)/(norm(A)*norm(x))
 




//pour n=100
n1=100
//matrice carré A de taille n avec la fonction rand():
A1=rand(n1,n1)

//vecteur colonne xex de taille n avec la fonction rand():
xex1=rand(n1,1)

//calcule le produit de A*xex:
b1=A1*xex1

//résoudre le systeme b=A*xex 

x1=A1\b1

//calcule erreur avant et erreur arriére

err1 =norm(xex1-x1)/norm(xex1)

relres1=norm(b1-A1*x1)/(norm(A1)*norm(x1))


//pour taille de matrice n= 1000
n2=1000
//matrice carré A de taille n avec la fonction rand():
A2=rand(n2,n2)

//vecteur colonne xex de taille n avec la fonction rand():
xex2=rand(n2,1)

//calcule le produit de A*xex:
b2=A2*xex2

//résoudre le systeme b=A*xex 

x2=A2\b2

//calcule erreur avant et erreur arriére

err2 =norm(xex2-x2)/norm(xex2)

relres2=norm(b2-A2*x2)/(norm(A2)*norm(x2))
