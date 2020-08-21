#!/bin/bash
#conda activate temp_env

DATASET=$1
LABEL_EMB=$2    # pifa-tfidf | pifa-neural | text-emb
CLUSTER_SIZE=$3
#cd X-Transformers
# setup label embedding feature path
# overwrite it if necessary
DATA_DIR=./Data
if [ ${LABEL_EMB} == 'pifa-tfidf' ]; then
    label_emb_inst_path=${DATA_DIR}/${DATASET}/X.trn.npz
elif [ ${LABEL_EMB} == 'pifa-neural' ]; then
    label_emb_inst_path=${DATA_DIR}/${DATASET}/X.trn.finetune.xlnet.npy
elif [ ${LABEL_EMB} == 'text-emb' ]; then
    label_emb_inst_path=${DATA_DIR}/${DATASET}/X.trn.npz
fi


# construct label embedding
mkdir -p ${DATA_DIR}/${DATASET}/label_embedding
LABEL_EMB_DIR=${DATA_DIR}/${DATASET}/label_embedding

CLUSTER_DATA_DIR=${DATA_DIR}/${DATASET}/cluster_info
mkdir -p ${CLUSTER_DATA_DIR}

CLUSTER_DATA_DIR=${DATA_DIR}/${DATASET}/cluster_info/${LABEL_EMB}
mkdir -p ${CLUSTER_DATA_DIR}

CLUSTER_DATA_DIR=${DATA_DIR}/${DATASET}/cluster_info/${LABEL_EMB}/${CLUSTER_SIZE}
mkdir -p ${CLUSTER_DATA_DIR}

#Comment this line once label embeddings are available
python -u -m xbert.preprocess --do_label_embedding -i ${DATA_DIR}/${DATASET} -o ${LABEL_EMB_DIR} \
    -l ${LABEL_EMB} \
    -x ${label_emb_inst_path}


# semantic label indexing
SEED=0
LABEL_EMB_NAME=${LABEL_EMB}-s${SEED}
INDEXER_DIR=${OUTPUT_DIR}/${LABEL_EMB_NAME}/indexer
python -u -m xbert.indexer \
    -i ${LABEL_EMB_DIR}/L.${LABEL_EMB}.npz \
    -o ${CLUSTER_DATA_DIR} --seed ${SEED} --cluster_size ${CLUSTER_SIZE}



python ./Clustering_Classifier/create_unbalanced_cluster.py --d ${DATASET} --e ${LABEL_EMB} --c ${CLUSTER_SIZE}


#p