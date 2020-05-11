#!/bin/bash
################################################################################
##  File:  7-zip.sh
##  Desc:  Installs 7-zip
################################################################################

## env varables details
export HELPER_SCRIPTS=scripts/helpers
export METADATA_FILE=scripts/metadatafile
export IMAGEDATA_FILE=scripts/imagedata.json
export IMAGE_VERSION=dev
export IMAGE_OS=ubuntu18
export DEBIAN_FRONTEND=noninteractive


# Excute repo.sh
sh scripts/base/repos.sh

# Install pre-requirement
apt-get update
apt-get dist-upgrade -y
systemctl disable apt-daily.service
systemctl disable apt-daily.timer
systemctl disable apt-daily-upgrade.timer
systemctl disable apt-daily-upgrade.service
echo '* soft nofile 65536 \n* hard nofile 65536' >> /etc/security/limits.conf
echo 'session required pam_limits.so' >> /etc/pam.d/common-session
echo 'session required pam_limits.so' >> /etc/pam.d/common-session-noninteractive
echo 'session required pam_limits.so' >> /etc/pam.d/common-session-noninteractive



# Excute configure-environment script
bash scripts/installers/configure-environment.sh

# Excute complete-snap-setup script
bash scripts/installers/complete-snap-setup.sh

# Excute 7-zip script
bash scripts/installers/ansible.sh

# Excute 7-zip script
bash scripts/installers/ansible.sh

# Excute basic script
bash scripts/installers/1804/basic.sh

# Excute build-essential script
bash scripts/installers/build-essential.sh

# Excute azcopy script
bash scripts/installers/azcopy.sh

# Excute azure-cli script
bash scripts/installers/azure-cli

# Excute azure-devops-cli script
bash scripts/installers/azure-devops-cli

# Excute java-tools script
bash scripts/installers/java-tools.sh

# Excute dotnetcore-sdk script
bash scripts/installers/dotnetcore-sdk.sh

# Excute google-chrome script
bash scripts/installers/google-chrome.sh




