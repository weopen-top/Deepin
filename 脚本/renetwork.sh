#!/bin/bash
if [ ! -f /usr/local/bin/renetwork ];then
    sudo cp $0 /usr/local/bin/renetwork
    sudo chown $USER:$USER /usr/local/bin/renetwork
    sudo chmod +x /usr/local/bin/renetwork
    echo "renetwork命令已安装，卸载请删除/usr/local/bin/renetwork。"
else
    sudo systemctl restart networking.service
    sleep 1
    sudo systemctl restart network-manager.service
    sleep 1
    sudo systemctl restart network-online.target
    sleep 1
    sudo systemctl restart NetworkManager
fi
