# installation du package igraph
install.packages("igraph")
# chargement du package
library("igraph")

#defiction du chemin vers le repertoire contenant le fichier
setwd("C:/Users/fredd/OneDrive - ESPRIT/psb/Prorammation R/data/twitch_gamers")

# chargement du fichier
g <- read.graph("data.csv",format = "edgelist")

# informations sur le nombre de nouds et de liens
print(summary(g))

# calculer la densité
print(graph.density(g))

# liste des degres
listeDegre <- degree(g, mode = "all")
# calcule de variance (STD)
print(sd(listeDegre))
# calcule de la moyenne (mean)
print(mean(listeDegre))

# calculer la distance moyenne
mean_distance(g)

# degree de distribution
plot(degree.distribution(g))
