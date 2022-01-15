# TD4 econometrics, part 1
# L3 eco
# Arnaud NATAL
# arnaud.natal@u-bordeaux.fr

#install.packages("githubinstall")

library(questionr)
library(dplyr)
library(e1071)
library(ggplot2)
library(githubinstall)
library(xlsx)
library(foreign)
library(rgl)
library(car)
githubinstall("PoEdata")


setwd("C:/Users/Arnaud/Documents/_Université/Doctorat/TD/2021-22/Econometrie_L3_eco/_Data")


##### Exercice 1
#--

##### Exercice 2
#-













##### Exercice 3
rm(list = ls())

tabE<-read.csv("AmesHousing.csv")

### Part 1

# Quanti cont

tabE$SalePrice=na.omit(tabE$SalePrice)
tabE$Gr.Liv.Area=na.omit(tabE$Gr.Liv.Area)
tabE$Lot.Area=na.omit(tabE$Lot.Area)

str(tabE$SalePrice)
tabE$SalePrice=as.numeric(tabE$SalePrice)

str(tabE$Gr.Liv.Area)
tabE$Gr.Liv.Area=as.numeric(tabE$Gr.Liv.Area)

str(tabE$Lot.Area)
tabE$Lot.Area=as.numeric(tabE$Lot.Area)

# Ecrire à la main le modèle à estimer

reg<-lm(tabE$SalePrice~tabE$Lot.Area+tabE$Gr.Liv.Area)
summary(reg)
# Toutes les pvalue sont inférieur au seuil de risque de 5%
# Écriture avec les chapeaux
# TCEPA, en moyenne si la surface du logement augmente de 1 pied carre alors le prix de vente augmente de 108.50 dollars.
# TCEPA, en moyenne si la taille du terrain augmente de 1 pied carre alors le prix de vente augmente de 0.7141 dollar.

reg$coef[1]+10148*reg$coef[2]+1500*reg$coef[3]




















##### Exercice 4
rm(list = ls())

library(PoEdata)
data(andy)

### Part 1

andy$sales=na.omit(andy$sales)
andy$price=na.omit(andy$price)
andy$advert=na.omit(andy$advert)
str(andy$sales)
str(andy$price)
str(andy$advert)

# Ecrire à la main le modèle à estimer

reg<-lm(andy$sales~andy$price+andy$advert)
summary(reg)
# Toutes les pvalue sont inférieur au seuil de risque de 5%
# Écriture avec les chapeaux
# TCEPA, em, si l’indice de prix augmente de 1 dollar alors les ventes diminuent de 7907.90 dollars
# TCEPA, em, si les d´epenses en publicit´e augmentent de 1000 dollars alors les ventes augmentent de 1860 dollars











##### Exercice 5
rm(list = ls())

library(PoEdata)
data(pizza4)

pizza4$pizza=na.omit(pizza4$pizza)
pizza4$income=na.omit(pizza4$income)
pizza4$age=na.omit(pizza4$age)
str(pizza4$pizza)
str(pizza4$income)
pizza4$pizza=as.numeric(pizza4$pizza)
str(pizza4$age)

# Ecrire à la main le modèle à estimer

reg<-lm(pizza4$pizza~pizza4$income+pizza4$age)
summary(reg)
# Toutes les pvalue sont inférieur au seuil de risque de 5%
# Écriture avec les chapeaux
# TCEPA, em, si l’ˆage augmente d’une ann´ee alors les d´epenses annuelles de pizza diminue de 7.5756 dollars
# TCEPA, em, si le revenu annuel augmente d’un millier de dollars alors les d´epenses annuelles de pizza augmentent de 1.83 dollars











##### Exercice 6
rm(list = ls())

data<-read.dta("wage2.dta")

data$lwage=na.omit(data$lwage)
data$KWW=na.omit(data$KWW)
data$educ=na.omit(data$educ)
data$IQ=na.omit(data$IQ)
str(data$lwage)
str(data$KWW)
str(data$educ)
str(data$IQ)

# Ecrire à la main le modèle à estimer

reg<-lm(data$lwage~data$KWW+data$educ+data$IQ)
summary(reg)
# Toutes les pvalue sont inférieur au seuil de risque de 5%
# Écriture avec les chapeaux
# TCEPA, em, si le r´esultat au test de connaissances sur le march´e du travail augmente de 1 point alors le salaire augmente de 0.98%
# TCEPA, em, si le r´esultat au test du QI augmente de 1 point alors le salaire augmente de 0.44%
# TCEPA, em, si le niveau d’´education augmente d’un an alors le salaire augmente de 3.1%










##### Exercice 7
rm(list = ls())

tabI<-read.table("ceosal2.dat",h=T)

tabI$salary=na.omit(tabI$salary)
tabI$sales=na.omit(tabI$sales)
tabI$ceoten=na.omit(tabI$ceoten)
tabI$mktval=na.omit(tabI$mktval)
str(tabI$salary)
str(tabI$sales)
str(tabI$ceoten)
str(tabI$mktval)
tabI$salary=as.numeric(tabI$salary)
tabI$sales=as.numeric(tabI$sales)
tabI$mktval=as.numeric(tabI$mktval)

# Ecrire à la main le modèle à estimer

reg<-lm(tabI$salary~tabI$sales+tabI$ceoten+tabI$mktval)
summary(reg)
# Toutes les pvalue sont inférieur au seuil de risque de 6.5%
# Écriture avec les chapeaux
# TCEPA, em, si le niveau des ventes augmente de 1 million de $ alors la valeur de la compensation re¸cue augmente de 0.01902 milliers de $ soit 19 dollars
# TCEPA, em, si le nombre d’ann´ees dans la compagnie augmente d’un an alors la valeur de la compensation re¸cue augmente de 12.7 milliers de dollars soit 12700 dollars
# TCEPA, em, si la valeur de march´e de la firme augmente de 1 million de $ alors la valeur de la compensation re¸cue augmente de 0.0234 milliers de dollars soit 23.40 dollars















##### Exercice 8
rm(list = ls())

library(car)
data(Prestige)

Prestig$education=na.omit(Prestige$education)
Prestig$women=na.omit(Prestige$women)
Prestige$prestige=na.omit(Prestige$prestige)
Prestige$income=na.omit(Prestige$income)
str(Prestige$education)
str(Prestige$women)
str(Prestige$prestige)
str(Prestige$income)
Prestige$income=as.numeric(Prestige$income)

# Ecrire à la main le modèle à estimer

reg<-lm(prestige~income+education+women,data=Prestige)
summary(reg)
# Le coefficient associ´e `a la variable women n’´etant pas significatif on enl`eve cette variable de la r´egression

reg<-lm(prestige~income+education,data=Prestige)
summary(reg)
# Toutes les pvalue sont inférieur au seuil de risque de 5%
# Écriture avec les chapeaux
# TCEPA, em, si le revenu augmente de 1000 dollars alors le degr´e de rang social augmente de 1
# TCEPA, em, si le nombre d’ann´ees d’´education augmente d’une ann´ee alors le degr´e social augmente de 4














##### Exercice 9
rm(list = ls())

library(freqparcoord)
data(prgeng)

pe<-prgeng[ prgeng$educ>= 13 & prgeng$educ !=15 ,]

pe$age=na.omit(pe$age)
pe$wageinc=na.omit(pe$wageinc)
pe$wkswrkd=na.omit(pe$wkswrkd)
str(pe$age)
str(pe$wageinc)
str(pe$wkswrkd)
pe$wageinc=as.numeric(pe$wageinc)

# Ecrire à la main le modèle à estimer

reg<-lm(pe$wageinc~pe$age+pe$wkswrkd)
summary(reg)
# Toutes les pvalue sont inférieur au seuil de risque de 5%
# Écriture avec les chapeaux
# TCEPA, si on compare deux programmeurs ou 2 ing´enieurs de la Silicon Valley ayant travaill´e le mˆeme nombre de semaine dans l’ann´ee, le plus d’ˆag´e d’un an aura un salaire annuel moyen plus ´elev´e de 497.63 dollars.
# TCEPA, si on compare deux programmeurs ou 2 ing´enieurs de la Silicon Valley ayant le mˆeme ˆage, celui qui a travaill´e une semaine de plus dans l’ann´ee aura un salaire annuel moyen plus ´elev´e de 1494.6 dollars.








##### Exercice 10
rm(list = ls())

tabL<-read.table("BWGHT.dat",h=F)
tabL1<-subset(tabL, select =c(4,10,1,8,9))
names(tabL1)<-c("bwght","cigs", "faminc", "male", "white")

tabL1$bwght=na.omit(tabL1$bwght)
tabL1$cigs=na.omit(tabL1$cigs)
tabL1$bwght=na.omit(tabL1$faminc)
str(tabL1$bwght)
str(tabL1$cigs)
str(tabL1$faminc)
tabL1$bwght=as.numeric(tabL1$bwght)

# Ecrire à la main le modèle à estimer

reg<-lm(tabL1$bwght~tabL1$cigs+tabL1$faminc)
summary(reg)
# Toutes les pvalue sont inférieur au seuil de risque de 5%
# Écriture avec les chapeaux
# TCEPA, em, si le nombre de cigarettes fum´ees /jour augmente d’une cigarette alors le poids du b´eb´e `a la naissance diminue de 0.463 once
# TCEPA, em, si le revenu familial augmente de 1000 dollars US alors le poids du b´eb´e `a la naissance augmente de 0.092 once.







##### Exercice 11
rm(list = ls())

library(caret)
data(cars,package="caret")

cars$Price=na.omit(cars$Price)
cars$Mileage=na.omit(cars$Mileage)
cars$Cylinder=na.omit(cars$Cylinde)
cars$Doors=na.omit(cars$Doors)
str(cars$Price)
str(cars$Mileage)
str(cars$Cylinder)
str(cars$Doors)
cars$Mileage=as.numeric(cars$Mileage)

# Ecrire à la main le modèle à estimer

reg<-lm(Price~Mileage+Cylinder+Doors,data=cars)
summary(reg)
# Toutes les pvalue sont inférieur au seuil de risque de 5%
# Écriture avec les chapeaux
# TCEPA, em, si la voiture a parcouru 100 miles en plus alors son prix diminuera de 15.53 dollars
# TCEPA, em, si la voiture a un cylindre en plus alors son prix augmentera de 4029 dollars
# TCEPA, em, si la voiture a une porte en plus alors son prix diminuera de 1653 dollars

# Une GM avec 4 portes, 6 cylindres et 21000 miles au compteur vaudra 23325.7 dollars (=9025-0.1553*21000+4029*6-1653*4)







##### Exercice 12
rm(list = ls())

tabC<-read.table("sleep75.dat",h=F)
tabC1<-subset(tabC, select =c(6,16,21,26, 30))
names(tabC1)<-c("educ","male","sleep","totwrk", "exper")

tabC1$sleep=na.omit(tabC1$sleep)
tabC1$totwrk=na.omit(tabC1$totwrk)
tabC1$exper=na.omit(tabC1$exper)
str(tabC1$sleep)
str(tabC1$totwrk)
str(tabC1$exper)

# Ecrire à la main le modèle à estimer

reg<-lm(sleep~totwrk+exper,data=tabC1)
summary(reg)
# Toutes les pvalue sont inférieur au seuil de risque de 5%
# Écriture avec les chapeaux
# TCEPA, em, si on passe une minute de plus au travail dans la semaine, on perd 0.14 mn de temps de sommeil dans la semaine
# TCEPA, em, si on a une ann´ee d’exp´erience en + alors la dur´ee de sommeil augmente de 3 minutes
