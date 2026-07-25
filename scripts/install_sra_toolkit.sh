#!/usr/bin/env bash

set -euo pipefail

echo "======================================="
echo "Installing SRA Toolkit..."
echo "======================================="

sudo apt update

sudo apt install -y sra-toolkit

echo
echo "SRA Toolkit Version:"
prefetch --version

echo
echo "SRA Toolkit installation completed."
