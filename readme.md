Step 1: Clone the directory from https://github.com/shubh1905/dissertation_UOE.git

Step 2: Goto Data folder and type the command: --> bash dowload-data.sh {Dataset_Name}
	{Dataset_Name} can take values from: Wiki10-31K, Eurlex-4K, AmazonCat-13K, Wiki-500K

Step 3: --> bash install.sh 
	This creates an environment by the name "temp_env" and installs all the necessary libraries.

Step 4: --> conda activate temp_env
	ACtivate the environment

For MACH:

Step 5: --> bash create_lookup.sh
	Hashes the class labels using universal hash functions. These are stored under "./Data/{Dataset_Name}/lookup/"

Step 6: --> bash train_mach.sh
	This command starts the training of MACH

For C-MACH:

Step 6: --> bash run_preprocess_label.sh {Dataset_Name} {Label_Embedding} {Number_of_Cluster}
	{Label_Embedding} can take values from: pifa-neural, pifa-tfidf and text-emb. {Number_of_Cluster} supports only powers of 2 due to balanced clustering. Generated label embeddings are stored in "./Data/{Dataset_Name}/" and the information about clustered labels is stored in "./Data/{Dataset_Name}/cluster_info/{Label_Embedding}/{Number_of_Cluster}/"

Step 7: -->bash train_cluster_classifier.sh
	This command is for training the top-level classifier. The models are saved in "./Data/saved_model/{Label_Embedding}/{Number_of_Clusters}/" and the predicted values are stored in "./Data/predicted/{Label_Embedding}/{Number_of_Clusters}/"



#N-MACH doesn't require any extra training as the top-level classifier is derived from the repititions of MACH

For Evaluation:

Step 8: --> bash predict_labels.sh
	Is is used to predict the results and then perform evaluation using the evaluation metrics: p@1,P@3,P@5 and R@50. A csv file is generated after each time a command inside predict_label.sh is executed. Every row that contains information is seperated by a row of "0"s. The first information row comprises of decoding time, second through fourth information rows comprise of P@1,P@3 and P@5 values. The last information row gives Recall@50. The csv file comprises of 16 columns. The column index represents how many repititions have been used for prediction, e.g. information in 6th column is when 6 repititions of base-lvel classifiers are used. When evaluating C-MACH or N-MACH then ignore the first column.
