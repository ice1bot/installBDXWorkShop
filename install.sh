#!/bin/bash

apt update -y && apt upgrade -y

pkg install git && pkg install vim && pkg install python3

pip install brotli && pip install requests && pip install urllib3

pip install projects

echo 安装numpy可能需要许久，请耐心等待

MATHLIB="m" pip3 install numpy

pip install mido

echo 请将Sample07_cmd_music.py的need_sign=True修改为False即可运行转换

echo BDxWorkShoo所需要环境安装完成

echo 克隆2401的BDXworkShop库

git clone https://github.com/CMA2401PT/BDXWorkShop

ls && cd BDXWorkShop
