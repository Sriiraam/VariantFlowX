# Reference Strategy

## 1. Objective

Define the reference resources required for VariantFlowX to ensure reproducible, standardized, and production-quality germline variant calling.

---

## 2. Reference Genome

Reference Genome: GRCh38 (Genome Reference Consortium Human Build 38)

Reason:
- Current human reference standard.
- Recommended for modern germline variant analysis.
- Compatible with GATK Best Practices.
- Widely adopted in research and clinical genomics.

---

## 3. Reference Resources

The workflow will use the following reference resources:

- Reference Genome FASTA
- FASTA Index (.fai)
- Sequence Dictionary (.dict)
- BWA-MEM2 Index
- Known Variant Sites for BQSR
- Gene Annotation (GTF/GFF)
- Functional Annotation Database

---

## 4. Known Sites for Base Quality Score Recalibration (BQSR)

The following public reference datasets will be used:

- dbSNP
- Mills and 1000G Gold Standard Indels
- HapMap
- 1000 Genomes Phase 1 High Confidence SNPs

These datasets enable GATK to model systematic sequencing errors during BQSR.

---

## 5. Functional Annotation Resources

Variant annotation will use publicly available databases such as:

- GENCODE Gene Annotation
- Ensembl
- ClinVar
- dbNSFP (optional future extension)

---

## 6. Reference Directory Structure

data/
└── reference/
    ├── genome/
    ├── indexes/
    ├── known_sites/
    ├── annotation/
    └── checksums/

---

## 7. Version Control

All reference resources shall:

- Be version documented.
- Include download source.
- Include checksum verification.
- Remain fixed throughout Version 1.0.

---

## 8. Reproducibility Strategy

VariantFlowX will document:

- Genome build version
- Annotation version
- Database versions
- Index versions
- Download URLs
- MD5/SHA256 checksums

This ensures complete reproducibility of every workflow execution.

---

## 9. Reference Approval

**Phase:** 5 – Reference Strategy

**Status:** Approved

GRCh38 and its associated public reference resources are adopted as the official references for VariantFlowX Version 1.0.