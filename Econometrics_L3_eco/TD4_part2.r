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

tabE$Bldg.Type=na.omit(tabE$Bldg.Type)

reg<-lm(tabE$SalePrice~tabE$Lot.Area+tabE$Gr.Liv.Area+tabE$Bldg.Type)

# TCEPA, em, une maison familiale individuelle vaut 7598 dollars
# TCEPA, em, si la surface du logement augmente de 1 pied carr´e alors le prix de vente augmente de 110.42 dollars.
# TCEPA, em, si la taille du terrain augmente de 1 pied carr´e alors le prix de vente augmente de 0.882 dollar.
# TCEPA, em, si la maison est une maison familiale mitoyenne alors elle vaut 61080 dollars de moins (signe <0) qu’une maison familiale individuelle. Cela ne veut pas dire que son prix est n´egatif mais que si on compare deux maisons de mˆeme taille bˆaties sur un terrain de mˆeme taille alors la maison familiale individuelle vaudra en moyenne 61080 dollars de plus qu’une maison familiale mitoyenne.
# TCEPA, em, si la maison est un duplex alors elle vaut 58870 dollars de moins (signe <0) qu’une maison familiale individuelle
# TCEPA, em, si la maison est une maison de ville mitoyenne alors elle vaut 11420 dollars de moins (signe <0) qu’une maison familiale individuelle.
# TCEPA, em, si la maison est une maison de ville individuelle elle vaut 32280 dollars de plus (signe>0) qu’une maison familiale individuelle

# Le prix de vente `a Ames entre 2006 et 2010 d’une maison familiale individuelle de 1500 pieds carr´es bˆatie sur un terrain de 10148 pieds carr´es aurait ´et´e de 182178.50 dollars(7598+0.882*10148+110.42*1500)
# Celui d’une maison de ville mitoyenne avec les mˆemes surfaces aurait ´et´e de 170758.5 (=182178.50 - 11420) dollars.
