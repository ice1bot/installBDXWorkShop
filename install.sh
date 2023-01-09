#!/bin/bash
red='\033[0;31m'
green='\033[0;32m' 
 yellow='\033[0;33m' 
 plain='\033[0m' 
 lan='\033[0;34m'
echo -e ${red}正在切换清华源
echo -e ${yellow}建议使用科学上网，否则下载安装将会很慢
sleep 1
sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list && apt update && apt upgrade

apt update -y && apt upgrade -y

pkg install git && pkg install vim && pkg install python3

pip install brotli && pip install requests && pip install urllib3

pip install projects

echo 安装numpy可能需要许久，请耐心等待

MATHLIB="m" pip3 install numpy

pip install mido

echo 请将Sample07_cmd_music.py的need_sign=True修改为False即可运行转换

echo BDxWorkShop所需要环境安装完成

echo 克隆CMA2401PT的BDXworkShop库
echo 如果因为网络问题克隆失败请复制以下命令进行克隆
echo git clone https://github.com/CMA2401PT/BDXWorkShop

git clone https://github.com/CMA2401PT/BDXWorkShop

ls

cd BDXWorkShop
