#!/bin/bash
clear
echo "   ___         _    ___  ___ ____   "
echo "  / __|___ _ _| |_ / _ \/ __|__  |  "
echo " | (__/ -_) ' \  _| (_) \__ \ / /   "
echo "  \___\___|_||_\__|\___/|___//_/    "

yum update -y
yum install wget -y
yum install net-tools -y
wget https://drive.google.com/file/d/1fl1JMAUVGZKiOi2hxfqbsBfMBpHkyT_u/view?usp=sharing
rpm -i openvpn-as-2.5-CentOS7.x86_64.rpm
cd /usr/local/openvpn_as/lib/python2.7/site-packages/
rm pyovpn-2.0-py2.7.egg
wget https://drive.google.com/file/d/1SxSaRqYwEoetoD5k39TRNxPMYfuT21SQ/view?usp=drive_link
cd /usr/local/openvpn_as/bin
./ovpn-init

echo "=========================DONE=============================="
echo "SETUP ADMIN PASSWORD"
passwd openvpn
echo "=========================DONE=============================="
