
library('sentimentr')

data <- Twitter.sentiment.self.drive.DFE

tweets <- data[,ncol(data)]
tweets

for(i in tweets){
  x <- sentiment(i)
  print(x)
  
}


