#!/bin/bash
################################################################################
##  File:  tool-2
##  Desc:  with sudo
################################################################################

## env varables details
HELPER_SCRIPTS=scripts/helpers
METADATA_FILE=scripts/metadatafile
IMAGEDATA_FILE=scripts/imagedata.json
IMAGE_VERSION=dev
IMAGE_OS=ubuntu18
DEBIAN_FRONTEND=noninteractive


# Excute homebrew-validate script
bash scripts/installers/homebrew-validate.sh

# Excute 7-zip script
bash scripts/installers/7-zip.sh

# Excute ansible script
bash scripts/installers/ansible.sh

# Excute  script
bash scripts/installers/azcopy.sh

# Excute  script
bash scripts/installers/azure-cli.sh

# Excute  script
bash scripts/installers/azure-devops-cli.sh

# Excute  script
bash scripts/installers/1804/basic.sh

# Excute  script
bash scripts/installers/aliyun-cli.sh

# Excute  script
bash scripts/installers/aws.sh

# Excute  script
bash scripts/installers/build-essential.sh	

# Excute  script
bash scripts/installers/clang.sh

# Excute  script
bash scripts/installers/swift.sh

# Excute  script
bash scripts/installers/cmake.sh
 
# Excute  script
bash scripts/installers/1804/containers.sh

# Excute  script
bash scripts/installers/docker-compose.sh

# Excute  script
bash scripts/installers/docker-moby.sh

# Excute  script
bash scripts/installers/dotnetcore-sdk.sh	

# Excute  script
bash scripts/installers/erlang.sh

# Excute  script
bash scripts/installers/firefox.sh

# Excute  script
bash scripts/installers/gcc.sh

# Excute  script
bash scripts/installers/gfortran.sh

# Excute  script
bash scripts/installers/git.sh

# Excute  script
bash scripts/installers/google-chrome.sh

# Excute  script
bash scripts/installers/google-cloud-sdk.sh

# Excute  script
bash scripts/installers/haskell.sh

# Excute  script
bash scripts/installers/heroku.sh

# Excute  script
bash scripts/installers/hhvm.sh

# Excute  script
bash scripts/installers/image-magick.sh

# Excute  script
bash scripts/installers/java-tools.sh

# Excute  script
bash scripts/installers/kind.sh

# Excute  script
bash scripts/installers/kubernetes-tools.sh

# Excute  script
bash scripts/installers/leiningen.sh

# Excute  script
bash scripts/installers/1804/mercurial.sh

# Excute  script
bash scripts/installers/miniconda.sh

# Excute  script
bash scripts/installers/mono.sh

# Excute  script
bash scripts/installers/mysql.sh

# Excute  script
bash scripts/installers/nvm.sh

# Excute  script
bash scripts/installers/nodejs.sh

# Excute  script
bash scripts/installers/bazel.sh

# Excute  script
bash scripts/installers/phantomjs.sh

# Excute  script
bash scripts/installers/1804/php.sh

# Excute  script
bash scripts/installers/pollinate.sh

# Excute  script
bash scripts/installers/postgresql.sh

# Excute  script
bash scripts/installers/powershellcore.sh

# Excute  script
bash scripts/installers/ruby.sh

# Excute  script
bash scripts/installers/rust.sh

# Excute  script
bash scripts/installers/julia.sh
  
# Excute  script
bash scripts/installers/sbt.sh

# Excute  script
bash scripts/installers/selenium.sh

# Excute  script
bash scripts/installers/sphinx.sh

# Excute  script
bash scripts/installers/subversion.sh

# Excute  script
bash scripts/installers/terraform.sh

# Excute  script
bash scripts/installers/packer.sh

# Excute  script
bash vscripts/installers/vcpkg.sh

# Excute  script
bash scripts/installers/zeit-now.sh

# Excute  script
bash scripts/installers/dpkg-config.sh

# Excute  script
bash scripts/installers/mongodb.sh

# Excute  script
bash scripts/installers/rndgenerator.sh


