#Kmeans clustering

import pandas as pd
import matplotlib.pyplot as plt
from sklearn.datasets import load_iris
from sklearn.cluster import KMeans
from sklearn.decomposition import PCA

iris = load_iris()
df = pd.DataFrame(iris.data, columns=iris.feature_names)

kmeans = KMeans(n_clusters=3, random_state=42)
df['Cluster'] = kmeans.fit_predict(df)

pca = PCA(n_components=2)
pca_data = pca.fit_transform(df[iris.feature_names])
df_pca = pd.DataFrame(pca_data, columns=['PCA1', 'PCA2'])
df_pca['Cluster'] = df['Cluster']

centers_pca = pca.transform(kmeans.cluster_centers_)

for cluster in range(3):
    cluster_data = df_pca[df_pca['Cluster'] == cluster]
    plt.scatter(cluster_data['PCA1'], cluster_data['PCA2'], label=f'Cluster {cluster}')

plt.scatter(centers_pca[:, 0], centers_pca[:, 1], s=100, c='black', marker='X', label='Centroids')

plt.title('KMeans Clustering on Iris Dataset (with Cluster Centers)')
plt.xlabel('PCA Component 1')
plt.ylabel('PCA Component 2')
plt.grid(True)
plt.show()
