# apt update and environmetn create
sudo apt-get update -y
sudo apt-get install python3-venv -y
sudo apt-get install libopenblas-base libopenmpi-dev -y
python3 -m venv nano_pilot
cd nano_pilot/

export NANO_PILOT_DIR=$PWD

sudo apt-get install python3-pip
sudo pip3 install jetson_stats

# install development stuff
sudo apt-get install htop git -y

# pip install
. bin/activate

mkdir downloads
cd downloads

# torch
wget https://nvidia.box.com/shared/static/p57jwntv436lfrd78inwl7iml6p13fzh.whl -O torch-1.8.0-cp36-cp36m-linux_aarch64.whl

pip3 install Cython
pip3 install numpy torch-1.8.0-cp36-cp36m-linux_aarch64.whl

# torchvision
cd ../share
sudo apt-get install libjpeg-dev zlib1g-dev libpython3-dev libavcodec-dev libavformat-dev libswscale-dev

git clone --branch v0.9.0 https://github.com/pytorch/vision torchvision
cd torchvision
export BUILD_VERSION=0.9.0
python3 setup.py install --user
cd ../
pip3 install 'pillow<7'

# torch2trt
cd $NANO_PILOT_DIR/share

git clone https://github.com/NVIDIA-AI-IOT/torch2trt
cd torch2trt
python setup.py install --plugins

