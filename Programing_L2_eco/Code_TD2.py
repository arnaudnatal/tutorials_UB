# -*- coding: utf-8 -*-
"""
TD2 - Structures conditionnelles
Prog L2 eco
2021-22
Université de Bordeaux
-----
Arnaud Natal
arnaud.natal@u-bordeaux.fr
"""

##### Exercice 1
%reset -f
i=9  # initialisation i à 9 en integer
j=0  # initialisation j à 0 en integer
b=i<j  # FALSE as boolean car 9<0 est faux0
b=i!=9  # FALSE as boolean car i diff de 9 est faux (i==9)
b=i==9  # TRUE
bi=i%2==0 or i%3==0
# modulo associe à deux entiers naturels le reste de la division euclidienne du premier par le second
# 9%2=(2*4)+1=1 --> 1==0 no
# 9%3=(3*3)+0=0 --> 0==0 yes 
# TRUE as boolean 
bj=j%2==0 or j%3==0
# 0 mod n equals 0
# TRUE as boolean
b=not(bi and bj)
# bi=bj=TRUE, bi AND bj = TRUE --> not true = FALSE so FALSE as boolean
# 


##### Exercice 2
# AND: if 1=FALSE, saute deuxième
# OR:  if 1=TRUE, saute deuxième

%reset -f
a=1
b=2
c=3
a!=b and b!=c  
a!=b and b!=c and a!=c
a!=b or b!=c
a!=b or b!=c or a!=c

%reset -f
a=1
b=2
c=1
a!=b and b!=c  
a!=b and b!=c and a!=c
a!=b or b!=c
a!=b or b!=c or a!=c

%reset -f
a=1
b=2
c=2
a!=b and b!=c  
a!=b and b!=c and a!=c
a!=b or b!=c
a!=b or b!=c or a!=c

%reset -f
a=1
b=1
c=2
a!=b and b!=c  
a!=b and b!=c and a!=c
a!=b or b!=c
a!=b or b!=c or a!=c

%reset -f
a=1
b=1
c=1
a!=b and b!=c  
a!=b and b!=c and a!=c
a!=b or b!=c
a!=b or b!=c or a!=c


##### Exercice 3
%reset -f

def f(x):
    return 0<=x<5
y=f(5)
y=f(9)


##### Exercice 4
%reset -f
n=4
n=5

n==0%2
# Toujours FALSE car modulo 0 --> 0, so NO

1!=2%n
# 1 est impair, 2%1=0, 1!=0 --> TRUE, so NO

n//2==0
# 4 est pair, 4//2=2, 2!=0 --> FALSE, so NO

n%2!=1
# TRUE, so YES

0!=n%2
# NO

n%2==0
# YES

# Pair
def pair(x):
    return x%2==0


##### Exercice 5
%reset -f
x=int(input("Entrez un nombre entier svp : ")) 
if x%2==0:
    y=x//2
else:
    y=x+1
x=x+1
# x=1 --> x=2 & y=2
# x=8 --> x=9 & y=4

x=int(input("Entrez un nombre entier svp : ")) 
if x%2==0:
    y=x//2
    y=x+1
x=x+1
# x=1 --> x=2 & y non def
# x=8 --> x=9 & y=9

x=int(input("Entrez un nombre entier svp : ")) 
if x%2==0:
    y=x//2
else:
    y=x+1
    x=x+1
# x=1 --> x=2 & y=2
# x=8 --> x=8 & y=4
    
x=int(input("Entrez un nombre entier svp : ")) 
if x%2==0:
y=x//2
else:
    y=x+1
x=x+1
# Ne fonctionne pas car no identation


##### Exercice 6
def compare(a, b):
    if a<b:
        x=-1
    elif a==b:
        x=0
    else:
        x=1
    return x

# variante
def compare(a, b):
    if a<b:
        return -1
    if a==b:
        return 0
    return 1








##### Exercice 7
def max2(x, y):
    if x<y:
        return y
    else:
        return x

# variante
def max2(x, y):
    if x<y:
        return y
    return x












##### Exercice 8
def max3(x, y, z):
    if x<y:
        if y<z:
            return z
        else:
            return y
    else:
        if x<z:
            return z
        else:
            return x

# variante 1
def max3(x, y, z):
    if x<y:
        return max2(y, z)
    return max2(x, z)

# variante 2
def max3(x, y, z):
    return max2(max2(x, y), z)

def max3(x, y, z):
    return max2(x, max2(y, z))


##### Exercice 9
%reset -f
def coutPhotocopies(n):
    if 0<n<=10:
        return n*0.2
    elif 10<n<=30:
        return (0.2*10)+(n-10)*0.15
    elif 30<n:
        return (0.2*10)+(0.15*20)+(n-30)*0.1
    else:
        return print("Le nombre de photocopie doit être strictement positif.")

coutPhotocopies(0)
coutPhotocopies(1)
coutPhotocopies(2)
coutPhotocopies(10)
coutPhotocopies(15)
coutPhotocopies(30)
coutPhotocopies(31)

    