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
%reset -f
def nombreDiviseurs(n):
    s=0;
    for i in range(1, n+1):
        if n%i==0:
            s=s+1
    return s
nombreDiviseurs(256)

def Diviseurs(n):
    div=[];
    for i in range(1, n+1):
        if n%i==0:
            div.append(i)
    return div
Diviseurs(256)


def estDiviseur(i,n):
    return n%i == 0

def estPremier(n):
    for i in range(2,n):
        if estDiviseur(i,n):
            return False
    return n >= 2



##### Exercice 10
def approxPi(nbEtapes):
    approx = 1
    signe = -1
    for i in range (1,nbEtapes+1):
        approx = approx + signe / (2*i+1)
        signe = -signe
    approx = 4 * approx
    print (approx)


##### Exercice 11
def liste3chiffres():
    for n in range(100,1000):
        unite = n % 10
        dizaine = ((n - unite) // 10) % 10
        centaine = (n - 10 * dizaine - unite) // 100
        if ((centaine + dizaine + unite) % 5 == 0):
            print(n)
            

##### Exercice 12
def factorielle(n):
    if n==0:
        return 1
    else:
        return n*factorielle(n-1)
    
def coeff_binomial(n,k):
    if k>n:
        return 0
    elif k==0 or k==n:
        return 1
    else:
        return factorielle(n)//(factorielle(n-k)*factorielle(k))
    
    
##### Exercice 13
def triangle_pascal(nb_lignes):
    for k in range(nb_lignes):
        for j in range(k+1):
            print(coeff_binomial(k,j), end=" ")
        print()  