#!/bin/bash

#安装system monitor indicator
sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor
sudo apt-get update
sudo apt-get install indicator-sysmonitor
indicator-sysmonitor &

#安装gdebi
sudo apt-get install gdebi

#安装有道字典
wget http://codown.youdao.com/cidian/linux/youdao-dict_1.1.0-0-deepin_amd64.deb
sudo gdebi -n youdao-dict_1.1.0-0-deepin_amd64.deb

#安装git
sudo apt-get install git

#安装zsh(https://zhuanlan.zhihu.com/mactalk/19556676)
sudo apt-get install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

#安装autojump(http://www.cnblogs.com/westfly/p/3283525.html)
sudo apt-get install autojump
