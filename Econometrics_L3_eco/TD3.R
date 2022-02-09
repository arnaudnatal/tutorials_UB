# TD3 econometrics
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


setwd("C:/Users/Arnaud/Documents/_Université/Doctorat/TD/2021-22/Econometrie_L3_eco/_Data")


##### Exercice 1
#--

##### Exercice 2
#-













##### Exercice 3
rm(list = ls())

#data<-read.table("AmesHousing.txt",header=TRUE)
data<-read.csv("AmesHousing.csv",dec=".",sep=",",h=T)

data$SalePrice=na.omit(data$SalePrice)
data$Gr.Liv.Area=na.omit(data$Gr.Liv.Area)
str(data$SalePrice)
str(data$Gr.Liv.Area)
data$SalePrice=as.numeric(data$SalePrice)

p1<-ggplot(data,aes(x=Gr.Liv.Area,y=SalePrice))+geom_point()
p1

n<-length(data$SalePrice)
n

reg<-lm(data$SalePrice~data$Gr.Liv.Area)
summary(reg)

p2<-p1+geom_smooth(method="lm")

reg$coef[1]+1600*reg$coef[2]


##### Exercice 4
rm(list = ls())

library(PoEdata)
data(andy)

andy$sales=na.omit(andy$sales)
andy$price=na.omit(andy$price)
str(andy$sales)
str(andy$price)

p1<-ggplot(andy,aes(x=price,y=sales))+geom_point()
p1

n<-lenght(andy$sales)
n

reg<-lm(andy$sales~andy$price)
summary(reg)

p2<-p1+geom_smooth(method="lm")

reg$coef[1]+5*reg$coef[2]













##### Exercice 5
rm(list = ls())

library(PoEdata)
data(pizza4)

pizza4$pizza=na.omit(pizza4$pizza)
pizza4$income=na.omit(pizza4$income)
str(pizza4$pizza)
str(pizza4$income)
pizza4$pizza=as.numeric(pizza4$pizza)

p1<-ggplot(pizza4,aes(x=income,y=pizza))+geom_point()
p1

n<-length(pizza4$income)
n

reg<-lm(pizza4$pizza~pizza4$income)
summary(reg)

p2<-p1+geom_smooth(method="lm")

reg$coef[1]+100*reg$coef[2]


##### Exercice 6
rm(list = ls())

data<-read.dta("wage2.dta")

data$lwage=na.omit(data$lwage)
data$KWW=na.omit(data$KWW)
str(data$lwage)
str(data$KWW)

p1<-ggplot(data,aes(x=KWW,y=lwage))+geom_point()
p1

n<-lenght(data$lwage)
n

reg<-lm(data$lwage~data$KWW)
summary(reg)

p2<-p1+geom_smooth(method="lm")

reg$coef[1]+55*reg$coef[2]











##### Exercice 7
rm(list = ls())

tabI<-read.table("ceosal2.dat",h=T)

tabI$salary=na.omit(tabI$salary)
tabI$sales=na.omit(tabI$sales)
str(tabI$salary)
str(tabI$sales)
tabI$salary=as.numeric(tabI$salary)
tabI$sales=as.numeric(tabI$sales)

p1<-ggplot(tabI,aes(x=sales,y=salary))+geom_point()
p1

n<-length(tabI$salary)
n

reg<-lm(tabI$salary~tabI$sales)
summary(reg)

p2<-p1+geom_smooth(method="lm")

reg$coef[1]+25000*reg$coef[2]


##### Exercice 8
rm(list = ls())

library(car)
data(Prestige)

Prestige$prestige=na.omit(Prestige$prestige)
Prestige$income=na.omit(Prestige$income)
str(Prestige$prestige)
str(Prestige$income)
Prestige$income=as.numeric(Prestige$income)

p1<-ggplot(Prestige,aes(x=income,y=prestige))+geom_point()
p1

n<-length(Prestige$prestige)
n

reg<-lm(prestige~income,data=Prestige)
summary(reg)

p2<-p1+geom_smooth(method="lm")

reg$coef[1]+1750*reg$coef[2]
















##### Exercice 9
rm(list = ls())

library(freqparcoord)
data(prgeng)

pe<-prgeng[ prgeng$educ>= 13 & prgeng$educ !=15 ,]

pe$age=na.omit(pe$age)
pe$wageinc=na.omit(pe$wageinc)
str(pe$age)
str(pe$wageinc)
pe$wageinc=as.numeric(pe$wageinc)

p1<-ggplot(pe,aes(x=age,y=wageinc))+geom_point()
p1

n<-length(pe$age)
n

reg<-lm(pe$wageinc~pe$age)
summary(reg)

p2<-p1+geom_smooth(method="lm")

reg$coef[1]+30*reg$coef[2]


##### Exercice 10
rm(list = ls())
setwd
library(ggplot2)

tabL<-read.table("BWGHT.dat",h=F)
tabL1<-subset(tabL, select =c(4,10))
names(tabL1)<-c("bwght","cigs")

tabL1$bwght=na.omit(tabL1$bwght)
tabL1$cigs=na.omit(tabL1$cigs)
str(tabL1$bwght)
str(tabL1$cigs)
tabL1$bwght=as.numeric(tabL1$bwght)

p1<-ggplot(tabL1,aes(x=cigs,y=bwght))+geom_point()
p1

n<-length(tabL1$bwght)
n

reg<-lm(tabL1$bwght~tabL1$cigs)
summary(reg)

p2<-p1+geom_smooth(method="lm")
p2

reg$coef[1]+35*reg$coef[2]






##### Exercice 15
rm(list = ls())
setwd
library(ggplot2)

library(githubinstall)
githubinstall("PoEdata")
library(PoEdata)
data(br)
attach(br)

price<-na.omit(price)
sqft<-na.omit(sqft)
str(price)
str(sqft)
p1<-ggplot(,aes(x=sqft, y=price))+geom_point()
p1
reg<-lm(price~sqft)
reg2<-lm(price~sqft+0)
summary(reg)
summary(reg2)
summary(reg$res)
ggplot(reg,aes(x=sqft, y=.resid))+geom_point()
confint(reg)




##### Exercice 11
rm(list = ls())

library(caret)
data(cars,package="caret")

cars$Price=na.omit(cars$Price)
cars$Mileage=na.omit(cars$Mileage)
str(cars$Price)
str(cars$Mileage)
cars$Mileage=as.numeric(cars$Mileage)

p1<-ggplot(cars,aes(x=Mileage,y=Price))+geom_point()
p1

n<-length(cars$Price)
n

reg<-lm(Price~Mileage,data=cars)
summary(reg)

p2<-p1+geom_smooth(method="lm")

reg$coef[1]+45000*reg$coef[2]



##### Exercice 12
rm(list = ls())

tabC<-read.table("sleep75.dat",h=F)
tabC1<-subset(tabC, select =c(6,16,21,26))
names(tabC1)<-c("educ","male","sleep","totwrk")

tabC1$sleep=na.omit(tabC1$sleep)
tabC1$totwrk=na.omit(tabC1$totwrk)
str(tabC1$sleep)
str(tabC1$totwrk)

p1<-ggplot(tabC1,aes(x=totwrk,y=sleep))+geom_point()
p1

n<-length(tabC1$sleep)
n

reg<-lm(sleep~totwrk,data=tabC1)
summary(reg)

p2<-p1+geom_smooth(method="lm")

reg$coef[1]+(35*60)*reg$coef[2]