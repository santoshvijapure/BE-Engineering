#....................part 1................................
#prog2 : using diabetes data with naive bayes


library("e1071")
library("caTools")
#import dataset

mydata<-read.csv("../datasets/PimaIndiansDiabetes.csv")
dim(PimaIndiansDiabetes)
View(mydata)

temp_field<-sample.split(mydata,SplitRatio=0.7)
traindata<-subset(mydata, temp_field==TRUE)
testdata<-subset(mydata, temp_field==FALSE)

traindata
testdata

#.........part 2............................

my_model<-naiveBayes(as.factor(traindata$Class)~.,traindata)
my_model

#.........part 3............................
#predicting, try putting type="class" or type="raw" after the test data
pred1<-predict(my_model,testdata[,-9])
pred1

#generate the confusion matrix
table(pred1, testdata$Class, dnn=c("predicted", "Actual"))

#To save the prediction
output<-cbind(testdata, pred1)
View(output)


