data(iris)
str(iris)
View(iris)
class(iris)
?iris
#Basic Box Plot
boxplot(iris$Sepal.Length)

#Add Title & Labels
boxplot(iris$Sepal.Length,
        main = "Box Plot for Sepal Length",
        ylab = "Sepal_Length",
        col='pink')

#Grouped Box plot(by Species)
boxplot(Sepal.Length~Species,
        data = iris,
        main = "Sepal Length by Species",
        xlab="Species",
        ylab="Sepal Length",
        col=c('pink','darkgreen','darkblue'))

# Multi Variate Box Plot
boxplot(iris[,1:4],
        main="Multi Variate Box Plot",
        col = c('pink','orange','darkblue','darkgreen'))

#Using Custom Palette
species_colors<-c("setosa"="red",
                  "versicolor"="steelblue",
                  "virginica"="darkgreen")
boxplot(
  Sepal.Length~Species,
  data=iris,
  col=species_colors,
  main="Sepal Length by Species(Custom Color Palatte"
)

#GGPLOT

library(ggplot2)
ggplot(iris,
       aes(x=Species,y=Sepal.Length))+
  geom_boxplot()

#Colored box plot by species
ggplot(iris,aes(x=Species,y=Sepal.Length,fill=Species))+
  geom_boxplot()+
  theme_minimal()

#Using Manual Color Palettes
ggplot(iris,aes(x=Species,y=Sepal.Length,fill=Species))+
  geom_boxplot()+
  scale_fill_manual(
    values=c(
      "setosa"="pink",
      "versicolor"="maroon",
      "virginica"="darkgreen"
    )
  )+
  theme_minimal()
