#Implement SVM using python

from sklearn.model_selection import train_test_split
from sklearn.svm import SVC
from sklearn.metrics import accuracy_score,classification_report,ConfusionMatrixDisplay,confusion_matrix
import pandas as pd
import matplotlib.pyplot as plt

data=pd.read_csv('HeartDisease.csv')
x=data[['age','thalach','chol','trestbps']]
y=data['target']

x_train,x_test,y_train,y_test=train_test_split(x,y,test_size=0.2,random_state=42)

model=SVC(kernel='linear')

model.fit(x_train,y_train)

y_pred=model.predict(x_test)

print("Accuracy : ",accuracy_score(y_test,y_pred))
print("Classification Report : ",classification_report(y_test,y_pred))

cm=confusion_matrix(y_test,y_pred)
disp=ConfusionMatrixDisplay(confusion_matrix=cm,display_labels=['No disease','Disease'])
disp.plot()
plt.show()
