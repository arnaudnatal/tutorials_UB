# -*- coding: utf-8 -*-
"""
TD1 - Premiers pas
Prog L2 eco
2021-22
Université de Bordeaux
-----
Arnaud Natal
arnaud.natal@u-bordeaux.fr
"""

##### Exercice 1
%reset -f
x=6
y=x+3
x=3
z=2*y-7
print(x)
print(y)
print(z)
#   | 1 | 2 | 3 | 4
# x | 6 | 6 | 3 | 3
# y | - | 9 | 9 | 9 
# z | - | - | - | 11


##### Exercice 2
%reset -f
i=i+1
# On ajoute 1 à la valeur de i
# Cependant, il manque l'affectation de la valeur
i+1=i
# Pas de sens, car identificateur et valeur sont inversés


##### Exercice 3
%reset -f
x=6
y=7
z=x
z=z+y
print(x)
print(y)
print(z)
#   | 1 | 2 | 3 | 4
# x | 6 | 6 | 6 | 6
# y | - | 7 | 7 | 7 
# z | - | - | 6 | 13


##### Exercice 4
%reset -f
x=1
x=2*x
print(x)
x=2*x
print(x)
x=2*x
print(x)
# n | 1 | 2 | 3 | 4
# x | 1 | 2 | 4 | 8
# Double la valeur de x à chaque fois
# Calcul x*(2^n)

##### Exercice 5
# 1.
%reset -f
x=1
x=y+1
y=2
# Pb: y n'est pas déclaré à temps

# 2.
%reset -f
y=2
x=1
x=y+-2
# Ok 

# 3.
%reset -f
y=2
x=1
x=y+3
# Ok

# 4.
%reset -f
x=1
y=0
x+y=1
# Pb: identificateur et valeur sont inversés

# 5.
%reset -f
y=2
x=1
x=y+/-1
# Pb: opérateur qui n'a pas de sens

# 6.
%reset -f
y=2
x=1
y=x-+1
# Ok 


##### Exercice 6
%reset -f
# Il faut passer par une troisième variable
# qui va stocker temporairement la valeur de a ou b
# car sinon, nous ecrasons les données
a=2
b=5

z=b
b=a
a=z
print(a, b)


##### Exercice 7
%reset -f
x=11*34  # initialisation de x à 374 (int)
x=13.4-6  # écrase x pour lui donner 7.4 --> diminution de la variable qui passe en float car virgule
y=13/4  # initialisation de y à 3.25 (float)
y=13//4  # écrase y pour lui donner 3 --> diminution car avec reste et passe en integer
z=13%2
# modulo associe à deux entiers naturels le reste de la division euclidienne du premier par le second: 13//2=6 donc 13-(2*6)=1
# Donc donne initialise z à 1 en integer
x=14%10  # écrase x pour lui donner 14//10=1 donc 14-(10*1)=4 --> diminution et passe en integer
# modulo 10 va donc "garder" la valeur de l'unité
y=14//10  # écrase y pour lui donner 1 --> diminution et reste en integer
i=x+y  # initialise i pour lui donner 4+1=5 et donc integer



##### Exercice 8
%reset -f
def f(x):
    a=x+1
    return a*a+x+1

# Calcul: a*a+x+1 avec a=x+1 donc a*a+a
x=0  # initialisation de x à 0 (int)
y=f(2)
# on entre dans la fonction a=2+1=3 donc affiche:
# y=3*3+2+1=12 comme int
t=4  # initialisation de t à 4 en int
y=f(t)
# x=t=4, a=4+1=5 --> y=5*5+4+1=30 en int
y=f(1)+f(2)
# x=1, a=1+1=2 --> y=(2*2+1+1)+12=18 en int
z=x+1  # initialisation de z=0+1=1 en int
y=f(z)  # x=z=1 donc a=2 et y=2*2+1+1=6 en int
y=f(x+1)  # x=0 donc x+1=1 donc y=6 en int donc ne change rien
z=f(x-t)  # x=0, t=4 donc x-t=0-4=-4 donc a=-4+1=-3 et donc z=-3*-3+-4+1=6
t=f(t)  # t=x=4 donc a=4+1=5 donc t=5*5+4+1=30 en int
x=f(f(1))  # Des calclus précédents on sait que f(1)=6 donc ici: x=6 donc a=6+1=7 et x=7*7+6+1=56


##### Exercice 9
# 1.
# Majuscule à Def qui rend le code faux

# 2.
# Manque l'alinéa qui rend le code faux

# 3.
# Manque ":" qui rend le code faux

# 4.
# x n'est pas défini au début

# 5.
# Fonctionne

# 6.
# La fonction n'a pas d'argument, mais pourtant on en demande un dans l'execution à la fin, donc erreur


##### Exercice 10
%reset -f
import math
def discriminant(a,b,c):
    d=(b**2)-4*a*c
    if d>0:  # deux solutions
        x=[(-b-math.sqrt(d))/(2*a),(-b+math.sqrt(d))/(2*a)]
    elif d==0:  # solution unique
        x=[-b/(2*a)]        
    else:  # pas de solution
        x=[]
    return x

discriminant(9,5,5)



##### Exercice 11
# 1.
%reset -f
def moyenne(a,b):
    x=(a+b)/2
    return x
moyenne(42,23)

# 2.
%reset -f
def moyennePonderee(a,coef_a,b,coef_b):
    x=(coef_a*a+coef_b*b)/(coef_a+coef_b)
    return x
moyennePonderee(5,2,12,3)