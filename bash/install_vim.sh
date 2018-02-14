#!/bin/bash

#########################################################
###                 vim                ##################
#referenct http://blog.csdn.net/laviolette/article/details/51364461
#########################################################
sudo apt-get install vim vim-scripts vim-doc
sudo apt-get install vim-addon-manager #安装插件管理
vim-addons install omnicppcomplete #安装自动补全
vim-addons install taglist
vim-addons install winmanager
vim-addons install minibufexplorer
vim-addons install project


#########################################################
###                 pip                ##################
#referenct http://blog.csdn.net/danielpei1222/article/details/62969815 7901
#安装新的python包：pip install packageName
#卸载python包：pip uninstall packageName
#寻找python包：pip search packageName
#########################################################
sudo apt-get install python-pip
#安装ftp server库支持
pip install pyftpdlib

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
