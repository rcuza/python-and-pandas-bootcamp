#!/bin/sh

yell() { echo "$0: $*" >&2; }
die() { yell "$*"; exit 111; }
try() { "$@" || die "cannot $*"; }

apt-get update

anaconda2="/vagrant/Anaconda2-2.5.0-Linux-x86_64.sh"
anaconda2url="https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda2-2.5.0-Linux-x86_64.sh"
anaconda3="/vagrant/Anaconda3-2.5.0-Linux-x86_64.sh"
anaconda3url="https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda3-2.5.0-Linux-x86_64.sh"

if [ ! -e ${anaconda2} ]
then
  try curl ${anaconda2url} -o ${anaconda2}
fi
${anaconda2} -b


#if [ ! -e ${anaconda3} ]
#then
#  try curl ${anaconda3url} -o ${anaconda3}
#fi
#${anaconda3} -b


true