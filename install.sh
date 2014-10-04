#!/bin/bash
apt-get update
apt-get install python-pip -y
apt-get install git -y
apt-get install python-dev libjpeg-dev -y
apt-get install build-dep python-imaging -y
apt-get install libjpeg8 libjpeg62-dev libfreetype6 libfreetype6-dev zlib1g-dev -y
apt-get install libncurses5-dev -y
ln -s /usr/lib/`uname -i`-linux-gnu/libfreetype.so /usr/lib/
ln -s /usr/lib/`uname -i`-linux-gnu/libjpeg.so /usr/lib/
ln -s /usr/lib/`uname -i`-linux-gnu/libz.so /usr/lib/
ln -s /usr/include/freetype2 /usr/local/include/freetype
pip install virtualenv virtualenvwrapper
cat "source /usr/local/bin/virtualenvwrapper.sh >> .bashrc"
cat "PATH=$PATH:." >> .bashrc
source .bashrc
mkvirtualenv dev
