#!/usr/bin/env bash

set -euo pipefail

bash scripts/install_java.sh
bash scripts/install_nextflow.sh
bash scripts/install_bioinformatics_tools.sh
bash scripts/install_sra_toolkit.sh
bash scripts/verify_environment.sh

echo
echo "======================================="
echo "VariantFlowX bootstrap completed!"
echo "======================================="
