# Introduction TD1 econometrics
# L3 eco
# Arnaud NATAL
# arnaud.natal@u-bordeaux.fr

##### 1. Commandes élémentaires
### 1.2. Travailler
1+2
a<-1+2
a
#-
a<-4+6

### 1.3.
b<-3*(5+7
)
#-
getwd()
setwd("C:/Users/Arnaud/Documents/_Université/Doctorat/TD/2021-22/Econometrie_L3_eco/TD1")


##### 2. Vecteurs et matrices
### 2.1. Vecteurs
x<-c(6,7,8,9,10)
x
#-
y<-1:5
y
#-
y<-seq(1,5)
y
u<-seq(2,10,by=2)
u
#-
w<-c(rep(1,4),rep(2,3))
w
s<-rev(3:9)
s
length(s)

### 2.2. Matrices
X<-cbind(y,x)
X
XX<-rbind(y,x)
XX
#- 
Z<-matrix(c(1:10,18,32,6,22,8,4),nrow=4)
Z
t(Z)
det(Z)
eigen(Z)
solve(Z)
diag(XX)


##### 3. Opérations, opérateurs et maths
X%*%XX
u>8
which(u>8)
u<4 & u>8
which(u<4 & u>8)
x[2]
x[-2]
x[x>8]
x[3]=33
X[3,2]
X[c(3,4),2]
X[3,]
XX[,5]