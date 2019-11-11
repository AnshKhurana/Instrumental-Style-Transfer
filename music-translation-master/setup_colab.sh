#git clone https://github.com/AnshKhurana/Instrumental-Style-Transfer.git
# manual instructions - upload and run # !./setup_colab.sh


rm -rf sample_data/
cd Instrumental-Style-Transfer/music-translation-master/
pip install -r requirements.txt 1>/dev/null
mkdir musicnet
wget https://homes.cs.washington.edu/~thickstn/media/musicnet.tar.gz -O musicnet/musicnet.tar.gz
wget https://homes.cs.washington.edu/~thickstn/media/musicnet_metadata.csv -O musicnet/musicnet_metadata.csv
tar xvfz musicnet/musicnet.tar.gz 1>/dev/null
# delete tar for space saving
#rm musicnet/musicnet.tar.gz
# CHANGED src/parse_musicnet.py traindir and testdir
python src/parse_musicnet.py -i musicnet -o musicnet/parsed
apt update && apt install -y libsndfile1
# After unzipping music net tar, remove the tar gz file - DISK quota
for d in musicnet/parsed/*/ ; do python src/split_dir.py -i $d -o musicnet/split/$(basename "$d"); done
python src/preprocess.py -i musicnet/split -o musicnet/preprocessed
mkdir -p checkpoints/musicnet
# DOWNLOAD PRE-TRAINED NETWORK
wget https://dl.fbaipublicfiles.com/music-translation/pretrained_musicnet.zip -O checkpoints/musicnet/pretrained_musicnet.zip

#Some python stuff
# import gc
#gc.collect()
python garbage_collection.py


# After switching off gradients for encoder in train.py
#./train.sh
