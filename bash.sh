#!/bin/bash
################################################################################
##  File:  7-zip.sh
##  Desc:  Installs 7-zip
################################################################################

## env varables details
HELPER_SCRIPTS=scripts/helpers
METADATA_FILE=scripts/metadatafile
IMAGEDATA_FILE=scripts/imagedata.json
IMAGE_VERSION=dev
IMAGE_OS=ubuntu18
DEBIAN_FRONTEND=noninteractive


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

# Excute preparemetadata script
sh scripts/installers/1804/preparemetadata.sh

# Excute preimagedata script
sh scripts/installers/preimagedata.sh

# Excute configure-environment script
sh scripts/installers/configure-environment.sh

# Excute complete-snap-setup script
sh scripts/installers/complete-snap-setup.sh

# Excute homebrew script
sh scripts/installers/homebrew.sh"

# Excute reboot script
sh scripts/base/reboot.sh

# Excute homebrew-validate script
sh scripts/installers/homebrew-validate.sh

