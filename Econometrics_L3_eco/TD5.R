rm(list=ls())

# Exercice 10

#install.packages("lmtest", dependencies=TRUE)
library(lmtest)

# Q1.
setwd("C:/Users/Arnaud/Documents/_Université/Doctorat/TD/2021-22/Econometrie_L3_eco/_Data")
table<-read.table("BWGHT.dat", header=FALSE)

# Q2.
tabL1<-subset(table,select=c(4,10,1,8,9))
names(tabL1)<-c("bwght", "cigs", "faminc", "male", "white")
attach(tabL1)

# Q3.
summary(tabL1)
# cigs min à 0

# Vérifications
str(tabL1)
bwght<-as.numeric(bwght)
male<-as.factor(male)
white<-as.factor(white)
any(is.na(tabL1))

# Q4.
regL<-lm(bwght~cigs+faminc+male+white)

# Q5.
regL2<-lm(log(bwght)~cigs+log(faminc)+male+white)

# Q6.
petest(regL, regL2)
# on ne peut pas conclure:
# pvalue --lineaire-- sup à 5% --> on reste sur --lineaire--  
# pvalue --loglog-- sup à 5% -->  on reste sur --loglog--
# Donc on ne peut pas choisir entre y en log ou y en lin


# Q7.
regL3<-lm(bwght~cigs+log(faminc)+male+white)

# Q8.
jtest(regL, regL3)
# On ne peut pas conclure
# On a donc L, L2 et L3

AIC(regL)
AIC(regL3)
# On sort le L3
# Il nous reste L et L2

# Q9.
regL4<-lm(log(bwght)~cigs+faminc+male+white)

# Q10.
jtest(regL2, regL4)
# On ne peut pas conclure
# On a donc L, L2 et L4

AIC(regL2)
AIC(regL4)
# On sort L2
# Il nous reste L et L4

# Q11.
resettest(regL,power=2:3,type="fitted")
resettest(regL4,power=2:3,type="fitted")
# Il ne manque pas de var donc on a toujours les deux modèles

summary(regL)
summary(regL4)
# On garde le modèle qui max R2 adj
# Il reste regL
summary(regL)

# Q12.

