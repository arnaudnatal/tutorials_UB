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
#githubinstall("PoEdata")
library(PoEdata)

setwd("C:/Users/Arnaud/Documents/_Université/Doctorat/TD/2021-22/Econometrie_L3_eco/_Data")


##### Exercice 1
#--

##### Exercice 2
#-






########## Mercredi




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




##### Exercice 15
library(PoEdata)
data(br)
br<-subset(br, select=c(price,sqft,bedrooms,baths,age))
attach(br)

str(br)
any(is.na(br))

reg<-lm(log(price)~sqft+bedrooms+baths+age)
summary(reg)

# TCEPA EM si la surface de la maison augmente de 1 pied carr´e alors le prix de la maison augmente de 0.03308%
# TCEPA EM si le nombre de chambre augmente de 1 alors le prix de la maison diminue de 5.89%
# TCEPA EM une salle de bain en plus augmente le prix de la maison de 21.4%
# TCEPA EM si on compare deux maisons et que l’une est plus ancienne d’un an alors le prix de la maison la plus ancienne est inf´erieur de 0.66% au prix de la plus r´ecente














########## Jeudi 1


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











########## Jeudi 2

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






##### Exercice 17











########## Vendredi 1

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



##### Exercice 8
rm(list = ls())

library(car)
data(Prestige)

Prestige$education=na.omit(Prestige$education)
Prestige$women=na.omit(Prestige$women)
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














########## Vendredi 2


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