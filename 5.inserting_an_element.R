#Insert an element in vector

nums<-c()
n=as.integer(readline(prompt="Enter the number of elements : "))
print(paste("Enter ",n," numbers"))
for(i in 1:n){
  x=as.integer(readline())
  nums[i]=x
}
print(nums)
element=as.integer(readline(prompt= "Enter the element to insert : "))
pos = as.integer(readline(prompt="Enter the position where element have to be inserted : "))
nums[pos]=element
print(paste('The vector after inserting is : '))
print(nums)
