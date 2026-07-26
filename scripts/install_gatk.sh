#!/bin/bash
set -e

echo "========================================"
echo " Installing GATK "
echo "========================================"

VERSION=4.6.2.0

cd /tmp

wget -O gatk.zip \
https://github.com/broadinstitute/gatk/releases/download/${VERSION}/gatk-${VERSION}.zip

unzip -q gatk.zip

sudo mv gatk-${VERSION} /opt/gatk

sudo ln -sf /opt/gatk/gatk /usr/local/bin/gatk

echo
echo "Installed successfully."
gatk --version
