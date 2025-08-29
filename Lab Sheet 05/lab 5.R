getwd()
setwd("C:\\Users\\it24102405\\Desktop\\lab 5 exercies")
getwd()
delivery_times <- read.table("delivery_times.txt", header = TRUE)
head(delivery_times)
names(delivery_times)<-("deliveryTimes")
attach(delivery_times)
histrogram<-hist(deliveryTimes,main="histrogram for dilevery time",breaks = seq(20,70,length=10),right = FALSE)

new <- c()
for(i in 1:length(breaks)){
  if(i==1) {
    new[i]=0
  } else {
    new[i]= cum.freq[i-1]
  }
}