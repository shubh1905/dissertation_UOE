
#t --> label embedding to be used : pifa-tfidf, pifa-neural,text-emb,pifa-tfidf_unbalanaced, pifa-neural_unbalanaced,text-emb_unbalanaced
#train --> if "True" will train other wise will only predict
#h --> hidden layer dimensions
#d --> Dataset Name
#cluster-size --> Number of clusters in the top-level classifier

###### Eurlex-4K

# python ./Clustering_Classifier/cluster_model.py --t text-emb_unbalanced --train True --h 500 --d Eurlex-4K --cluster_size 64
# python ./Clustering_Classifier/cluster_model.py --t pifa-tfidf_unbalanced --train True --h 500 --d Eurlex-4K --cluster_size 64
# python ./Clustering_Classifier/cluster_model.py --t pifa-neural_unbalanced --train True --h 500 --d Eurlex-4K --cluster_size 64

# python ./Clustering_Classifier/cluster_model.py --t text-emb --train True --h 500 --d Eurlex-4K --cluster_size 64
# python ./Clustering_Classifier/cluster_model.py --t pifa-tfidf --train True --h 500 --d Eurlex-4K --cluster_size 64
# python ./Clustering_Classifier/cluster_model.py --t pifa-neural --train True --h 500 --d Eurlex-4K --cluster_size 64


# python ./Clustering_Classifier/cluster_model.py --t text-emb_unbalanced --train True --h 500 --d Eurlex-4K --cluster_size 128
# python ./Clustering_Classifier/cluster_model.py --t pifa-tfidf_unbalanced --train True --h 500 --d Eurlex-4K --cluster_size 128
# python ./Clustering_Classifier/cluster_model.py --t pifa-neural_unbalanced --train True --h 500 --d Eurlex-4K --cluster_size 128

# python ./Clustering_Classifier/cluster_model.py --t text-emb --train True --h 500 --d Eurlex-4K --cluster_size 128
# python ./Clustering_Classifier/cluster_model.py --t pifa-tfidf --train True --h 500 --d Eurlex-4K --cluster_size 128
# python ./Clustering_Classifier/cluster_model.py --t pifa-neural --train True --h 500 --d Eurlex-4K --cluster_size 128



###### Wiki10-31K

python ./Clustering_Classifier/cluster_model.py --t text-emb --train True --h 500 --d Wiki10-31K --cluster_size 512
# python ./Clustering_Classifier/cluster_model.py --t pifa-tfidf --train True --h 500 --d Wiki10-31K --cluster_size 512
# python ./Clustering_Classifier/cluster_model.py --t pifa-neural --train True --h 500 --d Wiki10-31K --cluster_size 512

python ./Clustering_Classifier/cluster_model.py --t text-emb_unbalanced --train True --h 500 --d Wiki10-31K --cluster_size 512
python ./Clustering_Classifier/cluster_model.py --t pifa-tfidf_unbalanced --train True --h 500 --d Wiki10-31K --cluster_size 512
python ./Clustering_Classifier/cluster_model.py --t pifa-neural_unbalanced --train True --h 500 --d Wiki10-31K --cluster_size 512

#python ./Clustering_Classifier/cluster_model.py --t text-emb --train True --h 500 --d Wiki10-31K --cluster_size 1024
#python ./Clustering_Classifier/cluster_model.py --t pifa-tfidf --train True --h 500 --d Wiki10-31K --cluster_size 1024
#python ./Clustering_Classifier/cluster_model.py --t pifa-neural --train True --h 500 --d Wiki10-31K --cluster_size 1024

#python ./Clustering_Classifier/cluster_model.py --t text-emb_unbalanced --train True --h 500 --d Wiki10-31K --cluster_size 1000
python ./Clustering_Classifier/cluster_model.py --t pifa-tfidf_unbalanced --train True --h 500 --d Wiki10-31K --cluster_size 1024
#python ./Clustering_Classifier/cluster_model.py --t pifa-neural_unbalanced --train True --h 500 --d Wiki10-31K --cluster_size 1024

