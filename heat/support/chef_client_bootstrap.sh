#!/bin/bash

sleep 60;

yum -y -v remove firewalld && \
  yum -y -v install iptables-services && \
  sleep 30 && \
  service iptables restart;

systemctl enable iptables.service;

yum -y -v update;

userdel -rf fedora;

curl -L https://www.opscode.com/chef/install.sh | bash && \
  exit 0
