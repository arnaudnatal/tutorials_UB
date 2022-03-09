# -*- coding: utf-8 -*-
"""
TD5 - Révisions et compléments
Prog L2 eco
2021-22
Université de Bordeaux
-----
Arnaud Natal
arnaud.natal@u-bordeaux.fr
"""










##### Exercice 1
%reset -f

def uneMinuteEnPlus(h,m):
    if h<23:
        if m<59:
            return (h,m+1)
        return (h+1,0)
    else:
        if m<59:
            return (h,m+1)
        return (0,0)
    
def uneMinuteEnPlus2(h,m):
    if h<23 and m<59:
        return (h,m+1)
    elif h<23 and m==59:
        return (h+1,0)
    elif h==23 and m<59:
        return(23,m+1)
    else:
        return (0,0)
    
def uneMinuteEnPlus3(h,m):
    m=m+1
    if m==60:
        m=0
        h=h+1
        if h==24:
            h=0
    return h, m



















##### Exercice 2
%reset -f

def estDiviseur(i,n):
    return n%i==0

# 3,5,7,11,13

def estPremier(n):
    for i in range(2,n):
        if estDiviseur(i,n)==True:
            return False
    return n>=2

# i, n = de 2 à n-1 sachant qu'est premier si uniquement divsible par 1 et lui même
# donc on essaye tous les nb entre

def nbPremiers(n):
    count=0
    for i in range (2,n):
        if estPremier(i):
            count=count+1
    return nb




















##### Exercice 3
%reset -f

# Q2.
def premier (n):
    if n<=1:
        return False
    d=2
    while d*d<=n:
        if n%d==0:
            return False
        d=d+1
    return True


def testPremier():
    for n in range(2,100):
        if premier(n):
            print(n)
testPremier()



# Q3.
def premier2 (n):
    if n==2:
        return True
    if n%2==0:
        return False
    d=3
    while d*d<=n:
        if n%d==0:
            return False
        d=d+2
    return True


















##### Exercice 4
%reset -f

from bibcsv import *
from math import *

def moyenneListe(L):
    return sommeListe(L)/len(L)

def maximumListe(L):
    max=0
    for j in L :
        if j>max:
            max=j
    return max

def sommeListe(L):
    s=0
    for i in L:
        s=s+i
    return s

def sommeCarresListe(L):
    s=0
    for i in L:
        s=s+i**2
    return s

def ecartTypeListe(L):
    s = sommeListe(L)
    s2 = sommeCarresListe(L)
    n = len(L)
    return sqrt(s2/n-(s*s)/(n*n))


maliste=ouvrirCSV("notes.csv")
mlmoy=moyenneListe(maliste)
mlsd=ecartTypeListe(maliste) 
mlmax=maximumListe(maliste)

maliste2=ouvrirCSV("temperatures.csv")
ml2moy=moyenneListe(maliste2)
ml2sd=ecartTypeListe(maliste2) 
ml2max=maximumListe(maliste2)

def mystere(L, x):
    cpt=0
    for i in L :
        if i>x:
            cpt=cpt+1
            if cpt==3:
                return True
        else:
            cpt=0
    return False

mystere(maliste2, 30)



















##### Exercice 5
%reset -f

# Q1.
def facteurImpair(n):
    while n%2==0:
        n=n//2
    return n

facteurImpair(504)

# Q2.
def puissanceDiviseur(p,n):
    v=1
    while n%(p**v)==0:
        v=v+1
    return (p,n,v-1,p**(v-1))

puissanceDiviseur(2,504)

# variante
def puissanceDiviseurBis(p,n):
    v=p
    while n%v==0:
        v=p*v
    return v//p


puissanceDiviseur(2,504)

puissanceDiviseur(5,809)

puissanceDiviseur(2,999)


# Q3.
def premier(n):
    if n<=1:
        return False
    d=2
    while d*d<=n:
        if n%d==0:
            return False
        d=d+1
    return True


def premierSuivant(n):
    p=n+1
    while premier(p)==False:
        p=p+1
    return p

# Ou plus rapidement avec not
def premierSuivantBis(n):
    p=n+1
    while not premier(p):
        p=p+1
    return p

premierSuivant(2)
premierSuivant(3)
premierSuivantBis(3)


def decompositionFacteursPremiers(n):
    p = 2
    l = []
    while n > 1 :
        while n > 1 and n % p == 0:
            n = n // p
            l = l + [p]
        p = premierSuivant(p)
    return l

decompositionFacteursPremiers(12)


def decompo(n):
    p=2
    l=[]
    while n>1:
        while n%p==0:
            n=n//p
            l=l+[p]
        p=premierSuivant(p)
    return l


decompo(12)
decompositionFacteursPremiers(12)
















##### Exercice 6
%reset -f

# Q2.
def syracuse (a,n):
    u=a
    for i in range (n):
        if u%2==0:
            u=u//2
        else:
            u=(3*u+1)
    return u

syracuse(5,6)

# Q4.
def longueur (a):
    n=0
    while syracuse(a,n)>1:
        n=n+1
    return n

# Q5.
max=0
for i in range(100):
    n=longueur(i)
    if n>max:
        max=n
    print(i, n, max)

# Q6.
longueur(27)


# Q7.
# on peut défini la fonction qui calcule un nouveau terme
def f(u):
    if u%2 == 0:
        return u // 2
    else:
        return (3*u+1)

def listeSyracuse(a):
    u=a
    s=[u]
    while u>1:
        u=f(u)
        s=s+[u]
    return s

# Q8.    
def hauteur(a):
    u=a
    max=a
    while u>1:
        u=f(u)
        if u>max:
            max=u
    return max




















##### Exercice 7
%reset -f

# Q1.
def suite(n):
    u=3
    for i in range(n):
        u=(u/2)+(1/u)
    return u


# Q2.
for i in range(11):
    print(suite(i))


# Q3.
def sqrt(x):
    u=x
    for i in range(10):
        u=(u+(x/u))/2
        print(i,u)
    return u

sqrt(2)
sqrt(3)
sqrt(10)

# Q4.
sqrt(1000000)

def sqrt2(x):
    u=x
    u2=(u+(x/u))/2
    while abs(u2-u)>0.0000001:
        u=u2
        u2=(u+(x/u))/2
    return u2

sqrt3(1000000)
