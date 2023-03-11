#!/bin/bash


echo '在接下来的步骤中，根据界面提示按y或enter继续安装.'
echo '将在三秒后开始安装依赖'
sleep 3
sudo sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list

sudo apt install build-essential
sudo apt install bochs bochs-x libc6-dev-i386

tar xvzf nasm-2.08rc2.tar.gz
cd ./nasm-2.08rc2

./configure

make 
sudo make install
