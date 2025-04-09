lst=c()
i=1
n=as.integer(readline("Enter the number of terms : "))
print(paste("Enter ",n," numbers."))
while(i<=n){
  x=as.integer(readline())
  lst[i]=x
  i=i+1
}
print(paste("Maximum :",max(lst)))
print(paste("Minimum :",min(lst)))
