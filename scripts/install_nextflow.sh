#!/usr/bin/env bash

set -euo pipefail

echo "======================================="
echo "Installing Nextflow..."
echo "======================================="

curl -s https://get.nextflow.io | bash

sudo mv nextflow /usr/local/bin/

echo
echo "Nextflow Version:"
nextflow -version

echo
echo "Nextflow installation completed."
