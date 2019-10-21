library(e1071)
library(rpart)
library(caTools)
mydata<-read.csv(file="../datasets/capitalbikeshare.csv",header=TRUE, sep=",")
#consider?
subset_mydata<-mydata[,c(1,4,6,9)]

# %split
temp_field<-sample.split(subset_mydata,SplitRatio=0.9)

train<-subset(subset_mydata, temp_field=TRUE)
test<-subset(subset_mydata, temp_field=FALSE)

summary(train)
summary(test)

head(train)
head(test)

fit<-rpart(train$Member.type~.,data=train, method="class")
#To display
plot(fit)
text(fit)

#test data excluding the last column
pred<-predict(fit,newdata=test[-4],type=("class"))

#meanof true prediction
mean(pred==test$Member.type)

#display the output of the test data
output<-cbind(test, pred)
View(output)

