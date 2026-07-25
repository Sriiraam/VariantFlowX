#!/usr/bin/env bash

set -euo pipefail

echo "======================================="
echo "Installing Bioinformatics Tools..."
echo "======================================="

sudo apt update

sudo apt install -y \
    git \
    wget \
    curl \
    unzip \
    zip \
    build-essential \
    fastqc \
    samtools \
    fastp \
    bwa \
    python3-pip

echo
echo "Installing MultiQC..."

sudo apt install -y multiqc

echo
echo "Installed Versions"
echo "=================="

echo
echo "Git:"
git --version

echo
echo "FastQC:"
fastqc --version

echo
echo "SAMtools:"
samtools --version | head -n 1

echo
echo "BWA:"
bwa 2>&1 | head -n 2

echo
echo "fastp:"
fastp --version

echo
echo "MultiQC:"
~/.local/bin/multiqc --version

echo
echo "Core bioinformatics tools installed successfully."
