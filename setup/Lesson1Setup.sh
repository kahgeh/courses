cd nbs
wget https://raw.githubusercontent.com/fastai/courses/master/deeplearning1/nbs/lesson1.ipynb
wget https://raw.githubusercontent.com/fastai/courses/master/deeplearning1/nbs/utils.py
wget http://files.fast.ai/files/dogscats.zip
wget https://raw.githubusercontent.com/fastai/courses/master/deeplearning1/nbs/vgg16.py
mkdir -p data    
mv dogscats.zip ./data    
cd data
sudo apt install unzip
unzip -q dogscats.zip
rm dogscats.zip
pip install kaggle-cli
