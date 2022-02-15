# -*- coding: utf-8 -*-
"""
TD3 - Structures conditionnelles
Prog L2 eco
2021-22
Université de Bordeaux
-----
Arnaud Natal
arnaud.natal@u-bordeaux.fr
"""

##### Exercice 1
%reset -f
def mystere(n):
    s=0
    i=0
    while i<=n:
        s=s+i**2
        i=i+1
    return s

# n=20
# s=0
# i=0

# s=0+0**2=0
# i=0+1=1

# s=0+1**2=1
# i=1+1=2

# s=1+2**2=5
# i=2+1=3

# s=5+3**2=14
# i=3+1=4

# ...

mystere(20)
# 2870

# Calcul: 1**2+2**2+3**2+4**2+...+n**2
# Somme des chiffres/nombres au carré qui composent le nombre n


##### Exercice 2
%reset -f
def mystere2(a, n):
    i = 1
    x = a
    y = n
    while y > 0:
        if y % 2 == 1:
            i = i * x
        x = x * x
        y = y //2
    return i
# a=2
# n=8
mystere2(2, 8)

# i --> 1 -   -    -     - 256   - 0
# x --> 2 - 4 - 16 - 256 - 65536 -
# y --> 8 - 4 - 2  - 1   - 1     -
# i=256

mystere2(2, 6)
# a=2, n=6 --> i=64

mystere2(3, 4)
# a=3, n=4 --> i=81

# i=a**n


##### Exercice 3
%reset -f
from random import *
randrange(1, 7)

# Obtenir un 6
def obtenirUn6():
    nbLances=1
    tirage=randrange(1,7)
    while tirage!= 6:
        tirage=randrange(1,7)
        nbLances=nbLances+1
    return nbLances
obtenirUn6()

# Obtenir un double
def obtenirUnDouble():
    nbLances=2
    prev=randrange(1,7)
    current=randrange(1,7)
    while current!=prev:
        prev=current
        current=randrange(1,7)
        nbLances=nbLances+1
    return nbLances
obtenirUnDouble()


##### Exercice 4
%reset -f

def cullen(n):
    return n*(2**n)+1

def indiceCullen(x):
    n=0
    while x>cullen(n):
        n=n+1
    return n-1


cullen(3)
indiceCullen(15)
indiceCullen2(15)


##### Exercice 5
%reset -f
def mystere3(n):
    s=0
    while n>0:
        s=s+n%10
        n=n//10
    return s

mystere3(2705)
# 14

# La somme des chiffres du nombre.

def nombreDeChiffres(n):
    m=0
    while n>0:
        m=m+1
        n=n//10
    if m==0:
        m=1
    return m

def nombreDeChiffres(n):
    m=0
    while n>0:
        m=m+1
        n=n//10
    if m==0:
        return 1
    return m


def plusGrandChiffre(n):
    m=0
    while n>0:
        if m<n%10:
            m=n%10
        n=n//10
    return m


##### Exercice 6
%reset -f

def mystere4(n):
    s=0
    for i in range(1,n+1):
        s=s+i
    return s

# Résultat de la somme 1+2+3+...+n

# Normalement fonction du premier exo
def new(n):
    s=0
    i=0
    while i<=n:
        s=s+i
        i=i+1
    return s

mystere4(5)
new(5)



##### Exercice 7
%reset -f
for j in range(10):
    print(j,j*j)
    
for k in range(3,8):
    print(k,2*k+1)
    
for k in range(3,9,2):
    print(k)
    

##### Exercice 8
def sommeCarres(n):
    s=0
    for i in range(1,n+1):
        s=s+i**2
    return s


##### Exercice 9

# diviseur d'un entier naturel
# donc il faut que le reste
# de la division euclidienne soit = à 0
# donc modulo==0
# on fait tous les diviseurs d'un nb donc on doit tester tous les i allant de 1 à x-1
%reset -f
def nombreDiviseurs(n):
    s=0;
    for i in range(1, n+1):
        if n%i==0:
            s=s+1
    return s
nombreDiviseurs(256)


# Un nombre premier est un entier naturel qui admet exactement deux diviseurs distincts entiers et positifs (qui sont alors 1 et lui-même).
# Par opposition, un nombre non nul produit de deux nombres entiers différents de 1 est dit composé.
# Pour savoir si un nb est premier on fait le test de primalité

# pour tester N , on vérifie s’il est divisible par l’un des entiers compris au sens large entre 2 et N − 1. # Si la réponse est négative, alors N est premier, sinon il est composé.
def estPremier(n):
    for i in range(2,n):
        if n%i==0:
            return False
    return n>=2



estPremier(5)
# n=5
# i=2 --> 5%2

##### Exercice 10
def approxPi(nbEtapes):
    approx = 1
    signe = -1
    for i in range (1,nbEtapes+1):
        approx = approx + signe / (2*i+1)
        signe = -signe
    approx = 4 * approx
    return approx
    
# Une étape correspond à 1/3
# 1 - -1/3
# 2 - +1/5
# 3 - -1/7
# 4 - +1/9
# 5 - -1/11
# C'est 2 * nb étape + 1
# qui s'ajoute à chaque fois
# Avec changement de signe

# Donc on initialise à i=0 qui correspond au +1
# une étape = ancienne + 2 * nb étape -1 (/ (2*i+1))
# Boucle pour du coup ici
# La dernière valeur n'est pas prise en compte
# Donc jusqu'à étape +1

# La première étape correspond à une soustraction donc on va initialiser le numérateurà -1
# et à chaque nouvelle valeur on prend l'opposé de l'ancienne valeur donc on va passer de -1
# à -(-1)=+1
# puis à -(+1)=-1
# etc.



##### Exercice 11
def liste3chiffres():
    for n in range(100,1000):
        unite=n%10
        dizaine=(n//10)%10
        centaine=(n//100)%10
        if ((centaine + dizaine + unite)%5==0):
            print(n)            
            
# nb à 3 chiffre = 100 à 999 donc [100;1000[
# on récupère pas à pas les unités qu'on stock
# puis si la somme de ça est multiple de 5 alors on affiche
# unité juste n%10
# on enlève les unité en divisant, puis on passe aux dizaines...
 

##### Exercice 12
def factorielle(n):
   if n==0:
      return 1
   else:
      var=1
      for i in range(2,n+1):
         var=var*i
      return var
# factorielle de 0=1
# factorielle de 3 = 1*2*3
# on fait une boucle avec un compteur et on multiplie le compteur petit à petit par lui même

# Sinon par une approche recursive = en arrière au lieu d'aller en avant
def factorielle(n):
    if n==0:
        return 1
    else:
        return n*factorielle(n-1)

# 4!=4*3*2*1
# sachant que 3*2*1=3!
# sachant que 2*1=2!
# donc on lui demande de nous retourner
# n*factorielle(n-1)

def factoriellecent():
    for i in range(0,101):
        fact=factorielle(i)
        print(i, fact)
factoriellecent()
    
# condition: k<=n
# si k=0 le coef est 1
# k parmi n: n!/(k!(n-k)!)
def coeff_binomial(n,k):
    if k>n:
        return 0
    elif k==0 or k==n:
        return 1
    else:
        return factorielle(n)//(factorielle(n-k)*factorielle(k))

coeff_binomial(5,2)
# on met dans cet ordre pour avoir row *col
# k parmi n
# 2 parmi 5
# sur le triangle de Pascal on prend k ième col et n ième ligne
# k = col
# n = row 

##### Exercice 13
#     0 1 2  3  4 5
# 0 - 1
# 1 - 1 1
# 2 - 1 2 1
# 3 - 1 3 3  1
# 4 - 1 4 6  4  1
# 5 - 1 5 10 10 5 1

# Il faut faire défiler les colonnes et les lignes, donc mettre deux compteurs pour
# 
      
def triangle_pascal(nb_lignes):
    for n in range(nb_lignes+1): 
        for k in range(n): 
            print(coeff_binomial(n,k), end=" ") 
        print()        
        
triangle_pascal(5)