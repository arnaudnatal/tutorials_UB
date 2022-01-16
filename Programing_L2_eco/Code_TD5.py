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
    if m<59:
        return (h,m+1)
    elif h<23:
        return (h+1,0)
    else:
        return (0,0)

# variante
def uneMinuteEnPlus (h, m):
    m=m+1
    if m==60:
        m=0
        h=h+1
        if h==24:
            h=0
    return h, m

# variante
def uneMinuteEnPlus (h, m):
    m=(m+1)%60
    if m==0:
        h=(h+1)%24
    return h, m

# variante
def uneMinuteEnPlus(h,m):
    return(h+(m+1)//60)%24, (m+1)%60


##### Exercice 2
%reset -f

def estDiviseur(i,n):
    return n%i==0

# 2,3,5,7,11,13

def estPremier(n):
    for i in range(2,n):
        if estDiviseur(i,n):
            return False
    return n>=2

def nbPremiers(n):
    nb=0
    for i in range (2,n):
        if estPremier(i):
            nb=nb+1
    return nb


##### Exercice 3
%reset -f

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


#####• Exercice 4
%reset -f

from bibcsv import *