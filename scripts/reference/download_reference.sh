#!/usr/bin/env bash

set -euo pipefail

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
GENOME_DIR="${PROJECT_ROOT}/data/reference/genome"

mkdir -p "${GENOME_DIR}"

cd "${GENOME_DIR}"

echo "========================================"
echo " VariantFlowX Reference Genome Download"
echo "========================================"

echo
echo "Downloading GRCh38 (Homo_sapiens_assembly38)..."

REFERENCE_URL="ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/technical/reference/GRCh38_reference_genome/GRCh38_full_analysis_set_plus_decoy_hla.fa"

wget -c "${REFERENCE_URL}"

echo
echo "Download complete."

ls -lh Homo_sapiens_assembly38.fasta

