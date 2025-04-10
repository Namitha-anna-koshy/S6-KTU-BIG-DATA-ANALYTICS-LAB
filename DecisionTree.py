#Implement Decsion Tree using python

from sklearn.model_selection import train_test_split
from sklearn.datasets import load_breast_cancer
from sklearn.metrics import accuracy_score,classification_report,confusion_matrix
from sklearn.tree import plot_tree,DecisionTreeClassifier
import matplotlib.pyplot as plt

data=load_breast_cancer()
x=data.data
y=data.target

x_train,x_test,y_train,y_test=train_test_split(x,y,test_size=0.2,random_state=42)

model=DecisionTreeClassifier()
model.fit(x_train,y_train)

y_pred=model.predict(x_test)

print("Accuracy : ",accuracy_score(y_test,y_pred))
print("Classification Report : ",classification_report(y_test,y_pred))
print("Confusion Matrix : ",confusion_matrix(y_test,y_pred))
plot_tree(model)
plt.show()