#Multiplication table

num<- as.integer(readline(prompt = "Enter the number for multiplication table : "))
n<- as.integer(readline(prompt = "Enter the range for multiplication table : "))
for(i in 1:n){
  result<-i*num
  cat(num,"*",i,"=",result,"\n") 
  }
