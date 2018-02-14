#!/bin/bash

#########################################################
###                 shadowsocks        ##################
#########################################################
#安装shadowsocks
#reference:
#https://teddysun.com/357.html
#/etc/init.d/shadowsocks status
#可以查看进程是否启动。
#本脚本安装完成后，会将 Shadowsocks-libev 加入开机自启动。
#
#使用命令：
#启动：/etc/init.d/shadowsocks start
#停止：/etc/init.d/shadowsocks stop
#重启：/etc/init.d/shadowsocks restart
#查看状态：/etc/init.d/shadowsocks status

wget --no-check-certificate -O shadowsocks-libev.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-libev.sh
chmod +x shadowsocks-libev.sh
./shadowsocks-libev.sh 2>&1 | tee shadowsocks-libev.log

#安装BBR
#reference
#https://github.com/mmmwhy/LKL_BBR
wget -N --no-check-certificate https://raw.githubusercontent.com/91yun/uml/master/bbr/uml.sh && bash uml.sh
