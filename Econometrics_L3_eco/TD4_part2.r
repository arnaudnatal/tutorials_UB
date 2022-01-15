# TD4 econometrics, part 2
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

tabE<-read.csv("AmesHousing.csv")
str(tabE)

tabE$SalePrice=as.numeric(tabE$SalePrice)
tabE$Gr.Liv.Area=as.numeric(tabE$Gr.Liv.Area)
tabE$Lot.Area=as.numeric(tabE$Lot.Area)

tabE$SalePrice=na.omit(tabE$SalePrice)
tabE$Gr.Liv.Area=na.omit(tabE$Gr.Liv.Area)
tabE$Lot.Area=na.omit(tabE$Lot.Area)
tabE$Bldg.Type=na.omit(tabE$Bldg.Type)

reg<-lm(tabE$SalePrice~tabE$Lot.Area+tabE$Gr.Liv.Area+tabE$Bldg.Type)
summary(reg)
# TCEPA, em, une maison familiale individuelle vaut 7598 dollars
# TCEPA, em, si la surface du logement augmente de 1 pied carr´e alors le prix de vente augmente de 110.42 dollars.
# TCEPA, em, si la taille du terrain augmente de 1 pied carr´e alors le prix de vente augmente de 0.882 dollar.
# TCEPA, em, si la maison est une maison familiale mitoyenne alors elle vaut 61080 dollars de moins (signe <0) qu’une maison familiale individuelle. Cela ne veut pas dire que son prix est n´egatif mais que si on compare deux maisons de mˆeme taille bˆaties sur un terrain de mˆeme taille alors la maison familiale individuelle vaudra en moyenne 61080 dollars de plus qu’une maison familiale mitoyenne.
# TCEPA, em, si la maison est un duplex alors elle vaut 58870 dollars de moins (signe <0) qu’une maison familiale individuelle
# TCEPA, em, si la maison est une maison de ville mitoyenne alors elle vaut 11420 dollars de moins (signe <0) qu’une maison familiale individuelle.
# TCEPA, em, si la maison est une maison de ville individuelle elle vaut 32280 dollars de plus (signe>0) qu’une maison familiale individuelle

# Le prix de vente `a Ames entre 2006 et 2010 d’une maison familiale individuelle de 1500 pieds carr´es bˆatie sur un terrain de 10148 pieds carr´es aurait ´et´e de 182178.50 dollars(7598+0.882*10148+110.42*1500)
# Celui d’une maison de ville mitoyenne avec les mˆemes surfaces aurait ´et´e de 170758.5 (=182178.50 - 11420) dollars.







##### Exercice 4
rm(list = ls())

library(readxl)
data<-read_excel("cps12.xlsx")
str(data)

data$ahe=na.omit(data$ahe)
data$age=na.omit(data$age)
data$female=na.omit(data$female)
data$bachelor=na.omit(data$bachelor)

reg<-lm(log(ahe)~age+female+bachelor,data=data)
summary(reg)
# TCEPA, em, si l’ˆage augmente d’une ann´ee alors le salaire augmente de 2.55%
# TCEPA, em, le salaire horaire moyen d’un homme sans le BAC vaut exp(1.9414) soit 6.97 dollars
# TCEPA, em, les femmes ont un salaire horaire moyenne inf´erieur de 17.5% (=(exp(-0.192338)-1)*100) `a celui des hommes0
# TCEPA, em, avoir le BAC entraˆıne une augmentation du salaire horaire moyen de 55% (=(exp(0.437783)-1)*100) par rapport `a ne pas l’avoir

# Un homme de 25 ans sans le BAC a un salaire attendu de 13.2 dollars (=exp(1.941423+(25*0.02551)))
# Une femme de 25 ans avec le BAC a un salaire attendu de 16.85 dollars (=exp(1.941423-0.192388+0.437783+(25*0.02551)))
#  A partir du salaire des hommes sans le BAC on en d´eduit qu’une femme sans le BAC a un salaire horaire de 10.89=13.2*(1-0.175) et si elle a le BAC 10.89*1.55=16.88 (la diff´erence provient de l’arrondi employ´e)







##### Exercice 5
rm(list = ls())

library(PoEdata)
data(pizza4)
str(pizza4)
pizza4$pizza=as.numeric(pizza4$pizza)

pizza4$pizza=na.omit(pizza4$pizza)
pizza4$income=na.omit(pizza4$income)
pizza4$age=na.omit(pizza4$age)
pizza4$female=na.omit(pizza4$female)

reg<-lm(pizza~female+income+age, data=pizza4)
summary(reg)
# TCPEA, em, si l’ˆage augmente d’une ann´ee alors les d´epenses annuelles de pizza diminue de 8.18 dollars
# TCPEA, em, si le revenu annuel augmente d’un millier de dollars alors les d´epenses annuelles de pizza augmentent de 1.85 dollars
# TCPEA, em, les hommes d´epensent annuellement 461.86 dollars en pizza
# et les femmes d´epensent annuellement en moyenne 190.25 dollars de moins (coeff<0) que les hommes en pizza

# Le montant attendu des d´epenses annuelles en pizza d’une femme de 25 ans ayant un revenu annuel ´egal `a la m´ediane du revenu vaut 461.86-190.25-25*8.1828+1.8545*39=139.37 dollars.




##### Exercice 6
rm(list = ls())

library(foreign)
tabH<-read.dta("wage2.dta")
str(tabH)

tabH$lwage=na.omit(tabH$lwage)
tabH$IQ=na.omit(tabH$IQ)
tabH$KWW=na.omit(tabH$KWW)
tabH$black=na.omit(tabH$black)
tabH$married=na.omit(tabH$married)
tabH$educ=na.omit(tabH$educ)

reg<-lm(tabH$lwage~tabH$KWW+tabH$IQ+tabH$black+tabH$educ+tabH$married)
summary(reg)
# TCEPA, em, si le r´esultat au test de connaissances sur le march´e du travail augmente de 1 point alors le salaire augmente de 0.78%
# TCEPA, em, si le r´esultat au test du QI augmente de 1 point alors le salaire augmente de 0.34%
# TCEPA, em, si le niveau d’´education augmente d’un an alors le salaire augmente de 3.5%
# TCEPA, em, un caucasien c´elibataire gagne exp(5.175)=176.7966 dollars US par mois Cela peut vous sembler peu mais en 1980 le salaire horaire minimum ´etait proche 3.5 dollars
# TCEPA, em, un afro-am´ericain (black=1) gagne 100*(exp(-0.13053)-1)=12.2% de moins qu’un caucasien. On peut en d´eduire qu’un afro-am´ericain c´elibataire gagne 176.8*(1-(12.2/100)) soit 155 dollars
# TCEPA, em, ˆetre mari´e augmente de 100*(exp(0.1963873)-1)=21.7% le salaire par rapport `a ˆetre c´elibataire. On peut en d´eduire qu’un caucasien mari´e touche 176.8*(1+(21.7.63/100)) =215 dollars et un afro-am´ericain mari´e 155*(1+(21.7/100)) =188 dollars






##### Exercice 7
rm(list = ls())

tabI<-read.table("ceosal2.dat",h=T)
str(tabI)

tabI$salary=na.omit(tabI$salary)
tabI$ceoten=na.omit(tabI$ceoten)
tabI$sales=na.omit(tabI$sales)
tabI$mktval=na.omit(tabI$mktval)
tabI$college=na.omit(tabI$college)
tabI$grad=na.omit(tabI$grad)

tabI$salary=as.numeric(tabI$salary)
tabI$sales=as.numeric(tabI$sales)
tabI$mktval=as.numeric(tabI$mktval)
tabI$salary=na.omit(tabI$salary)

reg<-lm(tabI$salary~tabI$sales+tabI$ceoten+tabI$mktval+tabI$college+tabI$grad)
summary(reg)

reg<-lm(tabI$salary~tabI$sales+tabI$ceoten+tabI$mktval+tabI$diplome)
summary(reg)



##### Exercice 8
rm(list=ls())

library(car)
data(Prestige)
str(Prestige)

Prestige$education=na.omit(Prestige$education)
Prestige$women=na.omit(Prestige$women)
Prestige$prestige=na.omit(Prestige$prestige)
Prestige$income=na.omit(Prestige$income)
Prestige$type=na.omit(Prestige$type)

Prestige$income=as.numeric(Prestige$income)

reg<-lm(prestige~income+education+women+type,data=Prestige)
summary(reg)

reg<-lm(prestige~income+education+type,data=Prestige)
summary(reg)

reg<-lm(prestige~income+education,data=Prestige)
summary(reg)









##### Exercice 9
rm(list=ls())

library(freqparcoord)
data(prgeng)


pe<-prgeng[ prgeng$educ>= 13 & prgeng$educ !=15 ,]
pe$educ<-factor(pe$educ, levels=c("13","14","16"),labels=c("Licence","Master","Doctorat"))
pe$fem<-pe$sex-1

str(pe)

pe$age=na.omit(pe$age)
pe$wageinc=na.omit(pe$wageinc)
pe$fem=na.omit(pe$fem)
pe$educ=na.omit(pe$educ)

pe$wageinc=as.numeric(pe$wageinc)

reg<-lm(wageinc~age+fem+educ,data=pe)
summary(reg)
# TCEPA, si on compare deux programmeurs ou 2 ing´enieurs de la Silicon Valley de mˆeme sexe et avec le mˆeme niveau d’´etude le plus d’ˆag´e d’un an aura un salaire annuel moyen plus ´elev´e de 326 dollars.
# TCEPA, em, les hommes ayant une licence gagnent 53 142 dollars dans l’ann´ee soit 4428 dollars /mois
# TCEPA, em, les femmes gagnent 14127 dollars de moins que les homme dans l’ann´ee. Donc les femmes ayant une licence gagnent 53142-14127= 39015/an soit 3251.25/mois
# TCEPA, em, avoir un master augmente le salaire annuel de 11213 dollars par rapport `a avoir une licence. Donc un homme avec un master gagne 53142.78+11213 et une femme avec un master 53142.78+11213-  14127
# TCEPA, em, avoir un doctorat augmente le salaire annuel de 20806.8 dollars par rapport `a avoir une licence. Donc un homme avec un doctorat gagne 53142.78+20806.8 et une femme avec un master 53142.78+20806.8-14127








##### Exercice 10
rm(list=ls())

tabL<-read.table("BWGHT.dat",h=F)
tabL1<-subset(tabL, select =c(4,10,1,8,9))
names(tabL1)<-c("bwght","cigs","faminc","male","white")
str(tabL1)

reg<-lm(tabL1$bwght~tabL1$cigs+tabL1$faminc+tabL1$male+tabL1$white)
summary(reg)
# TCEPA, em, si le nombre de cigarettes fum´ees /jour augmente d’une cigarette alors le poids du b´eb´e `a la naissance diminue de 0.474 once soit 13.4 grammes
# TCEPA, em, si le revenu familial augmente de 1000 dollars US alors le poids du b´eb´e `a la naissance augmente de 0.06 once.
# TCEPA, em, une fille non caucasienne p`ese `a la naissance 112 onces soit 3k17.
# TCEPA, em, `a la naissance les gar¸cons p`esent 3.14 onces de plus que les filles
# TCEPA, em, `a la naissance les caucasiens p`esent 5.4 onces de plus que les non-caucasiens. On en d´eduit que le poids `a la naissance d’une fille caucasienne est 112+5.4 soit 117.4 onces et d’un gar¸con caucasien 117.4+3.14=120.54





##### Exercice 11
rm(list=ls())

library(caret)
data(cars,package="caret")
str(cars)

reg<-lm(Price~Mileage+Cylinder+Doors+Cruise+Leather,data=cars)
summary(reg)
# TCEPA, em, si la voiture a parcouru 100 miles en plus alors son prix diminuera de 16.72 dollars
# TCEPA, em, si la voiture a un cylindre en plus alors son prix augmentera de 3258 dollars
# TCEPA, em, si la voiture a une porte en plus alors son prix diminuera de 1402 dollars
# TCEPA, em, si la voiture n’a ni r´egulateur de vitesse ni si`eges en cuir son prix sera de 5530 dollars
# TCEPA, em, le r´egulateur de vitesse augmente le prix de 6320 dollars par rapport `a une voiture qui n’en a pas
# TCEPA, em, si la voiture a des si`eges en cuir son prix augmente de 2979 dollars par rapport `a une voiture qui n’en a pas
# Une GM avec 4 portes, 6 cylindres et 21000 miles au compteur avec un r´egulateur de vitesse vaudra 22278.8 dollars (=5530-0.1672*21000+3258*6-1402*4+6320) si en plus elle a des si`eges en cuir elle vaudra 25257.8 dollars (=22278.8+2979 )






##### Exercice 12
rm(list=ls())

tabC<-read.table("sleep75.dat",h=F)
tabC1<-subset(tabC, select =c(6,16,21,26))
names(tabC1)<-c("educ","male","sleep","totwrk")
str(tabC1)

reg<-lm(sleep~totwrk+educ+male,data=tabC1)
summary(reg)
# TCEPA, em, si on passe une minute de plus au travail dans la semaine, on perd 0.16 mn de temps de sommeil dans la semaine
# TCEPA, em, si niveau d’´education augmente d’un an alors la dur´ee de sommeil diminue de 14 mn
# TCEPA, em, les femmes dorment 3747 mn dans la semaine soit 62.25 heures soit 8.9 heures
# TCEPA, em, les hommes dorment 90 mn de plus que les femmes dans la semaine
