#!/bin/bash

sed -i s/^PasswordAuthentication.*/PasswordAuthentication\ yes/ /etc/ssh/sshd_config
systemctl restart sshd
cat /etc/ssh/sshd_config
echo "Enabled PasswordAuthentication"
dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y
