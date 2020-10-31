#!/bin/bash

Link="https://mpl1.androidfilehost.com/dl/9_pf-WH8hskNt0JB-gNCxA/1604219847/10763459528675561257/Lenovo_Legion_L79031_ROW_SECURE_USER_Q00114.1a_Q_ROW_12.0.091_ST_200719_QPST_%28by_firmwarefile.com%29.zip"
FileName="Lenovo-Legion"
apt-get -y update && apt-get -y upgrade && apt-get install -y unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller device-tree-compiler liblzma-dev python3 python3-pip brotli liblz4-tool axel gawk aria2 detox wget
pip3 install backports.lzma protobuf pycrypto docopt
wget "$Link" -O "$FileName"
bash dumpyara.sh "$FileName" "$GIT_SECRET" "$BOT_TOKEN"
