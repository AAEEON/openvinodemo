#!/bin/bash

wget https://apt.repos.intel.com/openvino/2020/GPG-PUB-KEY-INTEL-OPENVINO-2020

apt-key add GPG-PUB-KEY-INTEL-OPENVINO-2020
touch /etc/apt/sources.list.d/intel-openvino-2020.list
echo "deb https://apt.repos.intel.com/openvino/2020 all main" >> /etc/apt/sources.list.d/intel-openvino-2020.list
apt update
apt install intel-openvino-dev-ubuntu18-2020.4.287


apt install -y python3-pip cmake libgtk-3-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgtk2.0-dev libtbb-dev qt5-default
pip3 install test-generator==0.1.1 numpy networkx defusedxml protobuf progress sklearn scikit-build
pip3 install opencv-python

if [ -e /content ];then
	break;
else
	mkdir /content/
	mv /public/* /content/public/
fi

