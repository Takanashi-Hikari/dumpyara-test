#!/bin/bash

Link="https://dlcdnets.asus.com/pub/ASUS/ZenFone/ZB601KL/UL-ASUS_X00T-WW-17.2017.2008.432-user.zip"
FileName="ASUS-X00T-WW-432"
apt-get -y update && apt-get -y upgrade && apt-get install -y unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller device-tree-compiler liblzma-dev python3 python3-pip brotli liblz4-tool axel gawk aria2 detox wget
pip3 install backports.lzma protobuf pycrypto docopt
wget "$Link" -O "$FileName"
bash dumpyara.sh "$FileName" "$GIT_SECRET" "$BOT_TOKEN"