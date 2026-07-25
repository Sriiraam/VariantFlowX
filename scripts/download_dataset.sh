#!/usr/bin/env bash

set -euo pipefail

PROJECT_DIR=$(pwd)
RAW_DIR="${PROJECT_DIR}/data/raw"
ACCESSION_FILE="${PROJECT_DIR}/metadata/sra_accessions.txt"

mkdir -p "${RAW_DIR}"

cd "${RAW_DIR}"

echo "========================================"
echo " VariantFlowX Dataset Downloader"
echo "========================================"

while read -r ACCESSION
do
    [[ -z "$ACCESSION" ]] && continue

    echo
    echo "========================================"
    echo "Processing: ${ACCESSION}"
    echo "========================================"

    prefetch "${ACCESSION}"

    fasterq-dump \
        "${ACCESSION}" \
        --split-files \
        --threads 16

    pigz -p 16 "${ACCESSION}_1.fastq"
    pigz -p 16 "${ACCESSION}_2.fastq"

done < "${ACCESSION_FILE}"

echo
echo "========================================"
echo "Download Completed Successfully"
echo "========================================"

ls -lh *.fastq.gz
