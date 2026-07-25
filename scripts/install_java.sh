#!/usr/bin/env bash

set -euo pipefail

echo "======================================="
echo "Installing Java..."
echo "======================================="

sudo apt update
sudo apt install -y openjdk-21-jdk

echo
echo "Java Version:"
java -version

echo
echo "Java installation completed."
