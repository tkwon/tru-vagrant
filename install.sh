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
apt-get install tightvncserver -y
apt-get install gnome-core xfce4 firefox -y
pip install virtualenv virtualenvwrapper
echo "source /usr/local/bin/virtualenvwrapper.sh" >> /home/vagrant/.bashrc
echo "PATH=\$PATH:." >> /home/vagrant/.bashrc
su vagrant
cd /home/vagrant
pwd
source /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv dev

