#!/bin/bash
dnf install ansible -y
ansible-pull -i localhost, -U https://github.com/daws-86s/ansible-roboshop-roles-tf.git -e component=mongodb main.yaml
