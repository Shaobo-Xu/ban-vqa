## This code is modified from Hengyuan Hu's repository.
## https://github.com/hengyuan-hu/bottom-up-attention-vqa

## Script for downloading data

# GloVe Vectors
#wget -P data http://nlp.stanford.edu/data/glove.6B.zip
wget -P data http://nlp.stanford.edu/data/wordvecs/glove.6B.zip
unzip data/glove.6B.zip -d data/glove
rm data/glove.6B.zip

# Questions
wget -P data https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Questions_Train_mscoco.zip
unzip data/v2_Questions_Train_mscoco.zip -d data
rm data/v2_Questions_Train_mscoco.zip

wget -P data https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Questions_Val_mscoco.zip
unzip data/v2_Questions_Val_mscoco.zip -d data
rm data/v2_Questions_Val_mscoco.zip

wget -P data https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Questions_Test_mscoco.zip
unzip data/v2_Questions_Test_mscoco.zip -d data
rm data/v2_Questions_Test_mscoco.zip

# Annotations
wget -P data https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Annotations_Train_mscoco.zip
unzip data/v2_Annotations_Train_mscoco.zip -d data
rm data/v2_Annotations_Train_mscoco.zip

wget -P data https://s3.amazonaws.com/cvmlp/vqa/mscoco/vqa/v2_Annotations_Val_mscoco.zip
unzip data/v2_Annotations_Val_mscoco.zip -d data
rm data/v2_Annotations_Val_mscoco.zip

# Genome
wget -P data http://visualgenome.org/static/data/dataset/question_answers.json.zip
unzip data/question_answers.json.zip -d data
rm data/question_answers.json.zip

wget -P data http://visualgenome.org/static/data/dataset/image_data.json.zip
unzip data/image_data.json.zip -d data
rm data/image_data.json.zip

wget -P data http://images.cocodataset.org/annotations/annotations_trainval2017.zip
unzip data/annotations_trainval2017.zip -d data
rm data/annotations_trainval2017.zip

# Image Features
wget -P data https://imagecaption.blob.core.windows.net/imagecaption/trainval.zip
wget -P data https://imagecaption.blob.core.windows.net/imagecaption/test2014.zip
wget -P data https://imagecaption.blob.core.windows.net/imagecaption/test2015.zip
unzip data/trainval.zip -d data
unzip data/test2014.zip -d data
unzip data/test2015.zip -d data
rm data/trainval.zip
rm data/test2014.zip
rm data/test2015.zip

# Download Pickle caches for the pretrained model from
# https://drive.google.com/file/d/1m5pL9gOkcnLZ_NuANmnDFIcil3NQVmZc/view?usp=sharing
# and extract pkl files under data/cache/.
mkdir -p data/cache
wget --no-check-certificate 'https://drive.google.com/uc?export=download&id=1m5pL9gOkcnLZ_NuANmnDFIcil3NQVmZc' -O data/cache/cache.pkl.tgz
tar xvf data/cache/cache.pkl.tgz -C data/cache/
rm data/cache/cache.pkl.tgz

# VQA Input Images

#wget -P data http://msvocds.blob.core.windows.net/coco2014/train2014.zip
wget -P data http://images.cocodataset.org/zips/train2014.zip
unzip data/train2014.zip -d data/
rm data/train2014.zip

#wget -P data http://msvocds.blob.core.windows.net/coco2014/val2014.zip
wget -P data http://images.cocodataset.org/zips/val2014.zip
unzip data/val2014.zip -d data/
rm data/val2014.zip

#wget -P data http://msvocds.blob.core.windows.net/coco2015/test2015.zip
wget -P data http://images.cocodataset.org/zips/test2015.zip
unzip data/test2015.zip -d data/
rm data/test2015.zip