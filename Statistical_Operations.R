#Implement mean,median and mode in R

n<-as.integer(readline(prompt = "Enter the no of elements :"))
data<-c()
cat("Enter ",n," numbers : ")
for(i in 1:n){
  x=as.integer((readline()))
  data[i]<-x
}
mean_value=mean(data)
median_value=median(data)
getmode<-function(v){
  uniqv=unique(v)
  uniqv[which.max(tabulate((match(v,uniqv))))]
}

mode_value<-getmode(data)
cat("Mean : ",mean_value)
cat("\nMedian : ",median_value)
cat("\nMode : ",mode_value)

