#Implement logistic regression using r

data=mtcars
data$am=factor(data$am,labels=c('Automatic','Manual'))
model = glm(am~mpg+hp,data=data,family='binomial')
summary(model)
data$predicted_prob=predict(model,type = 'response')
data$predicted_class = ifelse(data$predicted_prob>0.5,'Manual','Automatic')
conf_matrix=table(Actual=data$am,Predicted=data$predicted_class)
print(conf_matrix)
accuracy=sum(diag((conf_matrix))/sum(conf_matrix))
precision=conf_matrix['Manual','Manual']/sum(conf_matrix[,'Manual'])
recall=conf_matrix['Manual','Manual']/sum(conf_matrix['Manual',])

cat('Accuracy = ',accuracy)
cat('\nPrecision = ',precision)
cat('\nRecall = ',recall)

plot(data$mpg,data$predicted_prob,pch=19,col=ifelse(data$am=='Manual','blue','red'),xlab='mpg'
     ,ylab='Probability of manual transmission',main='Logistic Regression')
curve(predict(model,data.frame(mpg=x,hp=mean(data$hp)),type = 'response'),from=min(data$mpg),
      to=max(data$mpg),add=TRUE,col='green',lwd=2)


