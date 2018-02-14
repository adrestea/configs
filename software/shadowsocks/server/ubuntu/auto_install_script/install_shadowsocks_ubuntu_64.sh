#!/bin/bash

#########################################################
###                 shadowsocks        ##################
#########################################################
#安装shadowsocks
#reference:
#https://teddysun.com/392.html
#/etc/init.d/shadowsocks status
#可以查看进程是否启动。
#本脚本安装完成后，会将 Shadowsocks-libev 加入开机自启动。
#
#使用命令：
#启动：/etc/init.d/shadowsocks start
#停止：/etc/init.d/shadowsocks stop
#重启：/etc/init.d/shadowsocks restart
#查看状态：/etc/init.d/shadowsocks status

wget --no-check-certificate -O shadowsocks-go.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-go.sh
chmod +x shadowsocks-go.sh
./shadowsocks-go.sh 2>&1 | tee shadowsocks-go.log

#安装BBR
#reference
#https://github.com/mmmwhy/LKL_BBR
wget -N --no-check-certificate https://raw.githubusercontent.com/91yun/uml/master/bbr/uml.sh && bash uml.sh

# cat /etc/shadowsocks-libev/config.json 
#{
#    "server":["[::0]","0.0.0.0"],
#    "server_port":9998,
#    "local_address":"127.0.0.1",
#    "local_port":1080,
#    "password":"LpaH4dEHf5",
#    "timeout":600,
#    "method":"aes-256-cfb"
#}
