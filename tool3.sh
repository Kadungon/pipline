#!/bin/bash
################################################################################
##  File:  tool-2
##  Desc:  with sudo
################################################################################

## env varables details
export HELPER_SCRIPTS=scripts/helpers
export INSTALLER_SCRIPT_FOLDER=scripts/installers
export METADATA_FILE=scripts/metadatafile
export IMAGEDATA_FILE=scripts/imagedata.json
export IMAGE_VERSION=dev
export IMAGE_OS=ubuntu18
export DEBIAN_FRONTEND=noninteractive
export GITHUB_FEED_TOKEN=adb3b71c909dc5449d127265260a5a90c6b14d02
export GO_VERSIONS=1.11 1.12 1.13 1.14
export GO_DEFAULT=1.14


bash scripts/installers/rndgenerator.sh
# Excute android script
bash scripts/installers/1804/android.sh

# Excute homebrew-validate script
bash scripts/installers/azpowershell.sh

# Excute homebrew-validate script
bash scripts/helpers/containercache.sh

# Excute homebrew-validate script
bash scripts/installers/hosted-tool-cache.sh

# Excute homebrew-validate script
bash scripts/installers/python.sh

# Excute homebrew-validate script
bash scripts/installers/test-toolcache.sh

# Excute homebrew-validate script
bash scripts/installers/go.sh

# Excute homebrew-validate script
bash scripts/installers/Install-Toolset.ps1

# Excute homebrew-validate script
bash scripts/installers/Validate-Toolset.ps1
