
library(ggplot2)
library(ggiraph)
library(plotly)
# read the dataset
df = read.csv("iris.csv")

#see the summary of dataset
print("SUMMARY AND STRUCTURE")
summary(df)
str(df)  #structure with class

print("MINIMUM VALUE")
print(sapply(df, function(x) min(as.numeric(x))))
print("MAXIMUM VALUE")
print(sapply(df, function(x) max(as.numeric(x))))
print("AVERAGE VALUE")
print(sapply(df, function(x) mean(as.numeric(x))))
print("RANGE OF VALUES")
print(sapply(df, function(x) range(as.numeric(x))))
print("STANDARD DEVIATIONS")
print(sapply(df, function(x) sd(as.numeric(x))))
print("VARIANCE")
print(sapply(df, function(x) var(as.numeric(x))))

print("PERCENTILES")
num = c(1,2,3,4)
for (n in num) {
  cat("Column", n , "\n")
  print(quantile(df[,n], probs = c(0, 0.25, 0.5, 0.75, 1)))
}

for (n in num) {
  hist(df[,n], main = "Histogram")
  Sys.sleep(5)
}

boxplot(df[,1:4], main = "Boxplot of Iris")
             
             
             
             
             
             #ggplot(df, aes(displ, hwy, colour = class)) + geom_point()
#ggplot(data=df,aes(x=SepalWidthCm, y=SepalLengthCm)) + geom_point() + theme_minimal()
ggplot(data=Iris,aes(x=Petal.Length, y=Petal.Width,color=Species)) + geom_point() + theme_minimal()
ggplot(data=Iris,aes(x=Sepal.Width, y=Sepal.Length,z=Petal.Length,color=Species)) + geom_point() + theme_minimal()
ggplot(data=Iris,aes(x=Petal.Width,y=Petal.Length,color=Species))+geom_point(alpha=0.3)


gg=ggplot(data=Iris[sample.int(nrow(data=Iris),size=2000),],aes(x=Petal.Lenght,y=Petal.width,color=Species))+geom_point_interactive(aes(tooltip=cut))
ggiraph(code = print(gg))
