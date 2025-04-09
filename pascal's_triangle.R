#Pascal's Triangle

n=as.integer(readline(prompt = "Enter the depth : "))
for(i in 1:n){
  cat(rep(" ",n-i+1))
  num=1
  for(j in 1:n){
    if(num != 0){
      cat(num," ")
    }
    num<-num*(i-j)/j
  }
  cat("\n")
}