# Dataset Inventory

**Project:** VariantFlowX

**Version:** 1.0

**Status:** Approved

---

# 1. Objective

The VariantFlowX pipeline will be developed, tested, validated, and benchmarked using a fixed public Whole Exome Sequencing (WES) dataset.

Using a single benchmark dataset throughout development ensures reproducibility, simplifies debugging, enables consistent benchmarking, and allows objective validation of every workflow stage.

---

# 2. Biological Problem

The objective of this project is to identify germline genetic variants from Illumina paired-end Whole Exome Sequencing (WES) data.

Starting from raw FASTQ files, the pipeline will produce a high-confidence set of SNPs and small insertions/deletions (Indels), followed by functional annotation, quality assessment, and reporting.

---

# 3. Dataset Selection Criteria

The selected dataset must satisfy the following requirements:

- Publicly available
- Illumina paired-end sequencing
- Whole Exome Sequencing (WES)
- Germline sample
- Compatible with GATK Best Practices
- Suitable for benchmarking
- Moderate size for rapid development
- Reproducible

---

# 4. Selected Dataset

| Field | Value |
|-------|-------|
| Dataset Name | Genome in a Bottle (GIAB) |
| Sample | NA12878 |
| Experiment Type | Whole Exome Sequencing (WES) |
| Organism | Homo sapiens |
| Sequencing Platform | Illumina |
| Read Layout | Paired-End |
| Analysis Type | Germline Variant Calling |
| Reference Genome | GRCh38 |

---

# 5. Scientific Purpose

This dataset serves as the benchmark dataset for the complete development of VariantFlowX.

Every module implemented in this project will be validated using this dataset.

---

# 6. Expected Input

The pipeline expects paired-end compressed FASTQ files.

Example:

```

Sample_R1.fastq.gz

Sample_R2.fastq.gz

```

---

# 7. Pipeline Output

The workflow will generate:

- Quality Control Reports
- Trimmed Reads
- Sorted BAM
- Duplicate-marked BAM
- Recalibrated BAM
- Raw VCF
- Filtered VCF
- Annotated VCF
- Variant Statistics
- MultiQC Report
- Final HTML Report

---

# 8. Validation Strategy

Every implementation stage will be tested on this dataset before proceeding to the next workflow component.

---

# 9. Future Expansion

Version 1.0 will use a single benchmark sample.

Future releases may support:

- Multiple samples
- Joint Genotyping
- Whole Genome Sequencing (WGS)
- Trio Analysis
- Cohort Analysis

---

# 10. Approval

This dataset is approved as the official benchmark dataset for VariantFlowX Version 1.0.