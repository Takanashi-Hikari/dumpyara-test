#!/bin/bash

Link="https://otafsg1.h2os.com/patch/amazone2/GLO/NordOxygen/NordOxygen_14.O.11_GLO_011_2010232026/NordOxygen_14.O.11_OTA_011_all_2010232026_83bb980e97.zip"
FileName="Nord"
apt-get -y update && apt-get -y upgrade && apt-get install -y unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller device-tree-compiler liblzma-dev python3 python3-pip brotli liblz4-tool axel gawk aria2 detox wget
pip3 install backports.lzma protobuf pycrypto docopt
wget "$Link" -O "$FileName"
bash dumpyara.sh "$FileName" "$GIT_SECRET" "$BOT_TOKEN"
