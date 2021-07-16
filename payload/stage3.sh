#!/usr/bin/env bash
#TODO: KDE installation script goes here.
apt-get update && apt upgrade -y || true
apt-mark hold rsyslog || true
apt install sudo -y || true
apt install apt-utils -y || true
apt install software-properties-common -y || true
add-apt-repository ppa:kubuntu-ppa/backports -y || true
apt update || true
apt install kubuntu-desktop -y || true
apt install tigervnc-standalone-server -y || true
apt install plasma-pa -y || true
apt install plasma-widgets-addons kubuntu-wallpapers-bionic -y || true
apt install latte-dock -y || true
apt update && sudo apt upgrade -y || true
rm /var/lib/dpkg/info/rsyslog.postinst; dpkg --configure -a
