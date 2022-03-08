# -*- coding: utf-8 -*-
"""
Created on Wed Mar  2 10:18:46 2022

@author: Arnaud
"""

########## TD n°2

##### Exercice 4
# %reset -f
# def mystere(x):
#     return x%2==0
# x=int(input("Entrez x "))
# mystere(x)


##### Exercice 5
%reset -f
x=int(input("Entrez un nombre entier svp : ")) 
if x%2==0:
    y=x//2
else:
    y=x+1
x=x+1
print("x=",x,"y=",y)
# x=1 --> x=2 & y=2
# x=8 --> x=9 & y=4


if x%2==0:
    y=x//2
    y=x+1
x=x+1
# x=1 --> x=2 & y non def
# x=8 --> x=9 & y=9


if x%2==0:
    y=x//2
else:
    y=x+1
    x=x+1
# x=1 --> x=2 & y=2
# x=8 --> x=8 & y=4
    

if x%2==0:
y=x//2
else:
    y=x+1
x=x+1
# Ne fonctionne pas car no identation









########## TD n°3

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



##### Exercice 6
%reset -f

def mystere4(n):
    s=0
    for i in range(1,n+1):
        s=s+i
    return s


##### Exercice 7
%reset -f
for j in range(10):
    print(j,j*j)
    
for k in range(3,8):
    print(k,2*k+1)
    
for k in range(3,9,2):
    print(k)
    
    
    
    
    
    
    
    

