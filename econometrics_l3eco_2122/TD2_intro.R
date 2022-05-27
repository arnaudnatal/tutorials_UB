# Introduction TD2 econometrics
# L3 eco
# Arnaud NATAL
# arnaud.natal@u-bordeaux.fr

##### 2. Lecture d'un fichier

#install.packages("questionr")
#install.packages("dplyr")
#install.packages("e1071")
#install.packages("ggplot2")

library(questionr)
library(dplyr)
library(e1071)
library(ggplot2)

data(rp2012)
rp<-filter(rp2012,region=="Aquitaine")

##### Chomeurs
ls()
head(rp)
chomage<-c(rp$pop_chom)
chomage<-na.omit(chomage)
str(chomage)
summary(chomage)
sd(chomage)
skewness(chomage)
kurtosis(chomage)

# Freedman and Diaconis
m <-ceiling(diff(range(chomage))/(2*IQR(chomage)/length(chomage)^(1/3)))
# Histogram
h1<-ggplot(, aes(x=chomage))+geom_histogram(bins=m)
h1
# Title and label
h1<-h1+ggtitle("Histogramme du nombre de chomeur en Aquitaine en 2012")
h1<-h1+xlab("Nb de chomeur")+ ylab("Nb de ville")
h1
# Over department
h2<-ggplot(rp, aes(x=pop_chom))+geom_histogram(bins=m)+ggtitle("Histogramme du nombre de chomeur en Aquitaine en 2012")+xlab("Nb de chomeur")+ ylab("Nb de ville")+geom_histogram(bins=m)+facet_wrap("rp$departement")
h2
