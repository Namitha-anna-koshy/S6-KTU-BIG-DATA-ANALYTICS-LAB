#Check if the given number is palindrome or not.also find its factorial

factorial<-function(num){
  i=1L
  fact = 1L
  while(i<=num){
    fact=fact*i
    i=i+1
  }
  return(fact)
}
palindrome<-function(num){
  rev=0
  while(num>0){
    x=num%%10
    rev=rev*10+x
    j=j+1
    num=as.integer(num/10)
  }
  return(rev)
}

num<-as.integer(readline("Enter a number : "))
f<-factorial(num)
pal<-palindrome(num)
print(paste("The factorial is : ",f))
if (num==pal){
  cat(num," is a plaindrome")
}else{
  cat(num,"is not a palindrome")
}
