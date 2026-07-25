#!/usr/bin/env bash

set -euo pipefail

echo "======================================="
echo "VariantFlowX Environment Verification"
echo "======================================="

echo
echo "Java:"
java -version

echo
echo "Nextflow:"
nextflow -version

echo
echo "Git:"
git --version

echo
echo "FastQC:"
fastqc --version

echo
echo "MultiQC:"
multiqc --version

echo
echo "fastp:"
fastp --version

echo
echo "BWA:"
bwa 2>&1 | head -n 2

echo
echo "SAMtools:"
samtools --version | head -n 1

echo
echo "SRA Toolkit:"
prefetch --version

echo
echo "======================================="
echo "Environment verification complete."
echo "======================================="
