#Implementation of hierarchical clustering

import pandas as pd
import matplotlib.pyplot as plt
from sklearn.datasets import load_iris
from scipy.cluster.hierarchy import linkage, dendrogram
from sklearn.preprocessing import StandardScaler

iris = load_iris()
X = iris.data
y = iris.feature_names

df = pd.DataFrame(X, columns=y)

scaler = StandardScaler()
X_scaled = scaler.fit_transform(X)

linked = linkage(X_scaled, method='ward')

plt.figure(figsize=(12, 7))
dendrogram(linked,
           orientation='top',
           labels=None,
           distance_sort='descending',
           show_leaf_counts=True)
plt.title("Hierarchical Clustering Dendrogram")
plt.xlabel("Sample Index")
plt.ylabel("Distance (Ward)")
plt.grid(True)
plt.show()
