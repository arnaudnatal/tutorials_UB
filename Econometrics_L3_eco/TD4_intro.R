# Introduction TD4 econometrics
# L3 eco
# Arnaud NATAL
# arnaud.natal@u-bordeaux.fr

##### 2. Lecture d'un fichier

#install.packages("questionr")
#install.packages("dplyr")
#install.packages("e1071")
#install.packages("ggplot2")
#install.packages("xlsx")
#install.packages("foreign")
#install.packages("rgl")
#install.packages("car")

library(questionr)
library(dplyr)
library(e1071)
library(ggplot2)
library(xlsx)
library(foreign)
library(rgl)
library(car)

rm(list = ls())
setwd("C:/Users/Arnaud/Documents/_Université/Doctorat/TD/2021-22/Econometrie_L3_eco/_Data")


##### Import
tabA<-read.table("beauty.dat",header=TRUE)
tabB<-read.csv("computers.csv",dec=".",sep=",",h=T)
tabC<- read.xlsx("FINAID2.xls",sheetIndex = 1)
tabD<-read.dta("caschool.dta")


##### A FAIRE
# 1. Plot
p1<-ggplot(tabC, aes(PARENT, FINAID, color=MALE),)+geom_point()+ggtitle("Nuage de points (USD/an)")+xlab("Dépenses des parents")+ylab("Bourse allouée à l'étudiant")
p1

# 2. OLS
n<-length(tabC$FINAID)
n

tabC$FINAID<-na.omit(tabC$FINAID)


regA<-lm(tabC$FINAID~tabC$PARENT)
summary(regA)

# 3. lfit
p2<-p1+geom_smooth(method="lm")
p2

# 4. log
regA2<-lm(log(tabC$FINAID)~tabC$PARENT)
summary(regA2)

# 5. val estim
exp(regA2$coef[1]+regA2$coef[2]*0.45)


##### Bonus
# 1.
scatter3d(tabC$FINAID~tabC$PARENT+tabC$HSRANK,point.col="blue",surface=FALSE)

# 2.
scatter3d(tabC$FINAID~tabC$PARENT+tabC$HSRANK,point.col="blue",surface=TRUE)

# 3.
scatter3d(tabC$FINAID~tabC$PARENT+tabC$HSRANK,residuals=T,neg.res.col="blue",pos.res.col="red")