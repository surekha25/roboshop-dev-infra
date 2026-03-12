#!/bin/bash

# extend partition
growpart /dev/nvme0n1 4
# resize LVM physical volume
pvresize /dev/nvme0n1p4
# extend logical volume
lvextend -L +30G /dev/mapper/RootVG-homeVol
# grow filesystem
xfs_growfs /home

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum -y install terraform