#Implement python program to find variance,covariance and correlation

import pandas as pd
from sklearn.datasets import load_iris

data=load_iris()
df=pd.DataFrame(data=data.data,columns=data.feature_names)

print("Correlation_Matrix : \n",df.corr())
print("Covarinace_Matrix : \n",df.cov())
print("Variance : \n",df.var())

