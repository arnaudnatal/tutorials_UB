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