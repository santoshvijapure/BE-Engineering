# Program no. 1
# Laboratory Practice-I
# tushar@tusharkute.com

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
