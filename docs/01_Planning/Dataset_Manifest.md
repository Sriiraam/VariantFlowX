# Dataset Manifest

**Project:** VariantFlowX

**Version:** 1.0

**Status:** Frozen

---

# Benchmark Study

| Field | Value |
|-------|-------|
| Consortium | Genome in a Bottle (GIAB) |
| BioProject | PRJNA200694 |
| SRA Study | SRP047086 |
| Analysis | Multi-Sample Germline Variant Calling |
| Pipeline | VariantFlowX v1.0 |

---

# Benchmark Samples

| Sample ID | Coriell ID | Description | Status |
|-----------|------------|-------------|--------|
| HG002 | NA24385 | Ashkenazim Son | Approved |
| HG003 | NA24149 | Ashkenazim Father | Approved |
| HG004 | NA24143 | Ashkenazim Mother | Approved |


---

# Sequencing Platform Requirements

- Illumina
- Paired-End
- Whole Exome Sequencing (WES)
- Agilent SureSelect Human All Exon V5
- 2 × 125 bp
- High-quality benchmark dataset

---

# Joint Genotyping Strategy

Each sample will be processed independently until GVCF generation.

The workflow will then perform:

1. GenomicsDBImport
2. GenotypeGVCFs

to generate a single cohort VCF for all benchmark samples.

---

# Dataset Freeze

The benchmark samples listed above are frozen for VariantFlowX Version 1.0.

The exact SRA Run Accessions (SRR IDs) will be documented below and will not change during Version 1.0 development.

| Sample | SRR Run | Status |
|---------|--------|--------|
| HG002 | Pending  | ⏳ |
| HG003 | Pending  | ⏳ |
| HG004 | Pending  | ⏳ |
