#!/bin/sh

yell() { echo "$0: $*" >&2; }
die() { yell "$*"; exit 111; }
try() { "$@" || die "cannot $*"; }

apt-get update
apt-get -y upgrade
apt-get -y autoremove

anaconda2="/vagrant/Anaconda2-2.5.0-Linux-x86_64.sh"
anaconda2url="https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda2-2.5.0-Linux-x86_64.sh"
anaconda2prefix="/home/vagrant/anaconda2"
anaconda3="/vagrant/Anaconda3-2.5.0-Linux-x86_64.sh"
anaconda3url="https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda3-2.5.0-Linux-x86_64.sh"
anaconda3prefix="/home/vagrant/anaconda3"

if [ ! -e ${anaconda2} ]
then
  echo "Downloading Anaconda2 script"
  try curl --silent ${anaconda2url} -o ${anaconda2}
  stat "${anaconda2}"
fi
/usr/bin/env bash ${anaconda2} -b -p "${anaconda2prefix}"

echo "PATH=\"${anaconda2prefix}/bin:\$PATH\"" >>/home/vagrant/.bashrc
chown -R vagrant:vagrant "${anaconda2prefix}"

#if [ ! -e ${anaconda3} ]
#then
#  echo "Downloading Anaconda3 script"
#  try curl --silent ${anaconda3url} -o ${anaconda3}
#  stat "${anaconda3}"
#fi
#/usr/bin/env bash ${anaconda3} -b -p "${anaconda3prefix}"
#echo PATH=\"${anaconda3prefix}/bin:\$PATH\"" >>/home/vagrant/.bashrc
#chown -R vagrant:vagrant "${anaconda3prefix}"

true
