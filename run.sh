#!/bin/bash

Link="https://dlcdnets.asus.com/pub/ASUS/ZenFone/ZS661KS/UL-ASUS_I003_1-ASUS-17.0823.2007.47-1.1.32-user.zip"
FileName="ROG3"
apt-get -y update && apt-get -y upgrade && apt-get install -y unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller device-tree-compiler liblzma-dev python3 python3-pip brotli liblz4-tool axel gawk aria2 detox wget
pip3 install backports.lzma protobuf pycrypto docopt
wget "$Link" -O "$FileName"
bash dumpyara.sh "$FileName" "$GIT_SECRET" "$BOT_TOKEN"
