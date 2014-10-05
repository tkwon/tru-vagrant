#!/bin/bash

# setup git and virtualenvs
apt-get update
apt-get install python-pip -y
apt-get install python-dev libjpeg-dev -y
apt-get install git -y
pip install virtualenv virtualenvwrapper

# from  http://codeinthehole.com/writing/how-to-install-pil-on-64-bit-ubuntu-1204/
apt-get install build-dep python-imaging -y
apt-get install libjpeg8 libjpeg62-dev libfreetype6 libfreetype6-dev zlib1g-dev -y
ln -s /usr/lib/`uname -i`-linux-gnu/libfreetype.so /usr/lib/
ln -s /usr/lib/`uname -i`-linux-gnu/libjpeg.so /usr/lib/
ln -s /usr/lib/`uname -i`-linux-gnu/libz.so /usr/lib/

# from http://stackoverflow.com/questions/13925355/cannot-get-rid-of-error-usr-bin-ld-cannot-find-lncurses
apt-get install libncurses5-dev -y

# from http://unix.stackexchange.com/questions/105265/install-pil-pillow-via-pip-in-debian-testing-jessie
ln -s /usr/include/freetype2 /usr/local/include/freetype

# install tightvnc
apt-get install tightvncserver -y
apt-get install gnome-core xfce4 firefox -y

# setup apache for file serving
apt-get install apache2 -y
rm -rf /var/www
ln -fs /vagrant /var/www

# prepare bashrc for virtualenv
echo "source /usr/local/bin/virtualenvwrapper.sh" >> /home/vagrant/.bashrc
echo "PATH=\$PATH:." >> /home/vagrant/.bashrc
su vagrant
cd /home/vagrant
pwd
source /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv dev

