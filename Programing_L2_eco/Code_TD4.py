# -*- coding: utf-8 -*-
"""
TD4 - Listes
Prog L2 eco
2021-22
Université de Bordeaux
-----
Arnaud Natal
arnaud.natal@u-bordeaux.fr
"""

##### Exercice 1
%reset -f
for i in [2,8,5]:
    print(i,i*i)
    

u=[2,8,5]
for i in u:
    print(i,i*i)
    
# Oui, elle prend la valeur de la dernière de la liste


##### Exercice 2
%reset -f
L=[17,38,10,25,72]

# Q1.
L.append(12)
print(L)

# Q2.
val=L[4]
print(val)

# Q3.
ind=L.index(25)
print(ind)

# Q4.
long=len(L)
print(long)

# Q5.
L.remove(38)
print(L)

# Q6.
L.extend([8,14,29])
print(L)

# Q7.
del(L[2])
print(L)

# Q8.
L[0]=55
print(L)

# Q9.
L2=L[2:5]
print(L2)

# Q10.
L3=L[:3]
print(L3)

# Q11.
L4=L[3:]
print(L4)

# Q12.
L5=L2+L3+L4
print(L5)

# Q13.
Ll=L[:]
print(Ll)

Ll.append(99)
print(Ll)

# Q14.
L6=[x**3 for x in range(5,12)]
print(L6)

# Q15.
L7=[2*x**2-3*x+5 for x in range(1,9)]
print(L7)

# Q16.
L8=[x**2 for x in range(10,21,2)]
print(L8)

# Q17.
L9=[x for x in range(111,130,3)]
print(L9)


##### Exercice 3
%reset -f
for a in ["a","b","c"]:
    for i in [1,2,3]:
        print(a,i)
# Croise toutes les valeurs entre elles    
        
u=[2,6,1,10,6]
v=[2,5,6,4]
for x in u:
    for y in v:
        print(x,y,x+y,x==y)
# 4*5=20
# Croise toutes les valeurs entre elles
# Pour sortir u v u+v et TRUE OR FALSE si u=v

##### Exercice 4
%reset -f
def sommeListe(L):
    s=0
    for i in L:
        s=s+i
    return s

sommeListe([1,3,13])
# L [1,3,13] --> 1 --> 3 --> 13
# i -        --> 1 --> 3 --> 13
# s 0        --> 1 --> 4 --> 17
# 17

sommeListe([1])
# L [1] --> 1
# i -   --> 1
# s 0   --> 1
# 1

sommeListe([])
# 0


def sommeListe(L):
    s=0
    for i in L:
        s=s+i
        return s

# Il ne va pas relancer la boucle, donc il va afficher le premier résultat
sommeListe([2, 9, 18, 5])


##### Exercice 5
%reset -f

def sommeCarresListe(L):
    s=0
    for i in L:
        s=s+i**2
    return s

from math import *
def ecartTypeListe(L):
    s = sommeListe(L)
    s2 = sommeCarresListe(L)
    n = len(L)
    return sqrt(s2/n-(s*s)/(n*n))


##### Exercice 6
%reset -f
## --
def moyenneListe(L):
    s=0
    for i in L:
        s=s+i
    return s/len(L)
moyenneListe([1,2,3,4,5,6,7,2,3,99])

# variante 2
def moyenneListe(L):
    return sommeListe(L)/len(L)
moyenneListe([1,2,3,4,5,6,7,2,3,99])


## --
def maximumListe(L):
    max=0
    for j in L :
        if j>max:
            max=j
    return max
maximumListe([1,2,3,4,5,6,7,2,3,99])

## --
def nbPairsListe(L):
    compt=0
    for j in L:
        if j%2==0:
            compt=compt+1
    return compt
nbPairsListe([1,2,3,4,5,6,7,2,3,99])


##### Exercice 7
%reset -f
def tousPairsListe(L):
    for j in L:
        if j%2==1:
            return False
    return True
tousPairsListe([1,2,3,4,5,6,7,2,3,99])


def existePairListe(L):
    for j in L:
        if j%2==0:
            return True
    return False
existePairListe([1,2,3,4,5,6,7,2,3,99])
