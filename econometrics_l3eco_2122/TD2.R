# TD2 econometrics
# L3 eco
# Arnaud NATAL
# arnaud.natal@u-bordeaux.fr

#install.packages("githubinstall")

library(questionr)
library(dplyr)
library(e1071)
library(ggplot2)
library(githubinstall)

githubinstall("PoEdata")


##### 6.1.
#--


##### 6.2.
#--


##### 6.3.
# 1.
rm(list = ls())
library(PoEdata)
data(andy)
# 2.
andy$sales<-na.omit(andy$sales)
# 3.
str(andy$sales)
# 4.
summary(andy$sales)
sd(andy$sales)
skewness(andy$sales)
kurtosis(andy$sales)
# 5.
m <-ceiling(diff(range(andy$sales))/(2*IQR(andy$sales)/length(andy$sales)^(1/3)))
h1<-ggplot(andy, aes(x=sales))+geom_histogram(bins=m)+ggtitle("Histogramme des ventes chez 'andy'")+xlab("Ventes/mois (pour 1000 USD)")+ ylab("Effectif")
h1


##### 6.4.
# 1.
rm(list = ls())
#install.packages("ISLR")
library(ISLR)
data(Credit)
# 2.
Credit$Balance<-na.omit(Credit$Balance)
# 3.
str(Credit$Balance)
Credit$Balance=as.numeric(Credit$Balance)
# 4.
summary(Credit$Balance)
sd(Credit$Balance)
skewness(Credit$Balance)
kurtosis(Credit$Balance)
# 5.
m <-ceiling(diff(range(Credit$Balance))/(2*IQR(Credit$Balance)/length(Credit$Balance)^(1/3)))
h1<-ggplot(Credit, aes(x=Balance))+geom_histogram(bins=m)+ggtitle("Histogramme du soldes des cartes")+xlab("Solde")+ ylab("Effectif")
h1
# 6.
h2<-h1+facet_wrap("Gender")


##### 6.5.
# 1.
rm(list = ls())
library(PoEdata)
data(crime)
# 2.
crime<-filter(crime,year==87)
# 3.
crime$crmrte<-na.omit(crime$crmrte)
# 4.
str(crime$crmrte)
# 5.
summary(crime$crmrte)
sd(crime$crmrte)
skewness(crime$crmrte)
kurtosis(crime$crmrte)
# 6.
m <-ceiling(diff(range(crime$crmrte))/(2*IQR(crime$crmrte)/length(crime$crmrte)^(1/3)))
h1<-ggplot(crime, aes(x=crmrte))+geom_histogram(bins=m)+ggtitle("Histogramme du taux de crime")+xlab("Taux de crime")+ ylab("Effectif")
h1


##### 6.6.
# 1.
rm(list = ls())
install.packages("caret")
library(caret)
data(cars)
# 2.
cars$Price<-na.omit(cars$Price)
# 3.
str(cars$Price)
# 4.
summary(cars$Price)
sd(cars$Price)
skewness(cars$Price)
kurtosis(cars$Price)
# 5.
m <-ceiling(diff(range(cars$Price))/(2*IQR(cars$Price)/length(cars$Price)^(1/3)))
h1<-ggplot(cars, aes(x=Price))+geom_histogram(bins=m)+ggtitle("Histogramme du prix des voitures")+xlab("Prix")+ ylab("Effectif")
h1
# 6.
h2<-h1+facet_wrap("Leather")


##### 6.7.
# 1.
rm(list = ls())
library(PoEdata)
data(br)
# 2.
br$price<-na.omit(br$price)
# 3.
str(br$price)
# 4.
summary(br$price)
sd(br$price)
skewness(br$price)
kurtosis(br$price)
# 5.
m <-ceiling(diff(range(br$price))/(2*IQR(br$price)/length(br$price)^(1/3)))
h1<-ggplot(br, aes(x=price))+geom_histogram(bins=m)+ggtitle("Histogramme du prix des maisons")+xlab("Prix des maisons")+ ylab("Effectif")
h1
# 6.
h2<-h1+facet_wrap("pool")


#### 6.7 pizza
rm(list=ls())
library(githubinstall)

githubinstall("PoEdata")

library(PoEdata)
library(ggplot2)
data(pizza4)

attach(pizza4)
pizza<-na.omit(pizza)
str(pizza)
pizza<-as.numeric(pizza)
summary(pizza)
m <-ceiling(diff(range(pizza))/(2*IQR(pizza)/length(pizza)^(1/3)))

h1<-ggplot(, aes(x=pizza))+geom_histogram(bins=m)+ggtitle("")+xlab("Dépenses annuelles en USD de pizza en Californie")+ ylab("Effectif")
h1
