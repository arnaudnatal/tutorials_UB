# Introduction TD3 econometrics
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

library(questionr)
library(dplyr)
library(e1071)
library(ggplot2)
library(xlsx)
library(foreign)

rm(list = ls())
setwd("C:/Users/Arnaud/Documents/_Université/Doctorat/TD/2021-22\Econometrie_L3_eco/_Data")

##### Import
tabA<-read.table("beauty.dat",header=TRUE)
tabB<-read.csv("computers.csv",dec=".",sep=",",h=T)
tabC<- read.xlsx("FINAID2.xls",sheetIndex = 1)
tabD<-read.dta("caschool.dta")

##### Plot


##### A FAIRE
