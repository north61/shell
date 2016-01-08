#!/bin/bash

#install program
yum install -y vim 
yum install -y shadowsocks
yum install -y man 
yum -y update
yum install -y zlib-devel bzip2-devel openssl-devel xz-libs wget
yum install bind-utils -y
yum install man 


#install python 2.7
cd /tmp
wget http://www.python.org/ftp/python/2.7.8/Python-2.7.8.tar.xz
xz -d Python-2.7.8.tar.xz
tar -xvf Python-2.7.8.tar
cd Python-2.7.8
./configure --prefix=/usr/local
make
make altinstall
ln -s -f /usr/local/bin/python2.7  /usr/bin/python

#instll pip 
cd /tmp
wget https://pypi.python.org/packages/source/s/setuptools/setuptools-17.5.tar.gz#md5=533c868f01169a3085177dffe5e768bb
tar -zxvf setuptools-17.5.tar.gz
cd setuptools-17.5
python setup.py install
easy_install pip
pip install ipython



#stop iptables
/etc/init.d/iptables stop


#install nc 
yum install -y nc 

#install nmap v7 ncat nping 
cd /tmp
wget https://nmap.org/dist/nmap-7.00-1.x86_64.rpm
rpm -ivh nmap-7.00-1.x86_64.rpm
wget https://nmap.org/dist/ncat-7.00-1.x86_64.rpm
rpm -ivh ncat-7.00-1.x86_64.rpm 
wget https://nmap.org/dist/nping-0.7.00-1.x86_64.rpm 
rpm -ivh nping-0.7.00-1.x86_64.rpm 

#install tcpdump
yum install -y tcpdump

#install hydra
yum install -y hydra
