#!/bin/bash

#安装system monitor indicator
sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor
sudo apt-get update
sudo apt-get install indicator-sysmonitor
indicator-sysmonitor &
