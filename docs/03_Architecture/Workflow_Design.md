# Workflow Design

## 1. Objective

Define the end-to-end execution flow of VariantFlowX by organizing the pipeline into modular sub-workflows using Nextflow DSL2.

---

## 2. Overall Workflow

Input FASTQ

↓

Quality Control

↓

Read Preprocessing

↓

Alignment

↓

Post-Alignment Processing

↓

Variant Calling

↓

Variant Filtering

↓

Variant Annotation

↓

Quality Metrics

↓

Final HTML Report

---

## 3. Workflow Organization

VariantFlowX is divided into six independent workflows:

### Workflow 1 – Quality Control

Purpose:
Assess the quality of raw sequencing reads.

Processes:

- FastQC (Raw)
- MultiQC (Raw)

Output:

- FastQC Reports
- MultiQC Report

---

### Workflow 2 – Read Preprocessing

Purpose:

Improve read quality before alignment.

Processes:

- fastp
- FastQC (Trimmed)
- MultiQC (Trimmed)

Output:

- Clean FASTQ
- QC Reports

---

### Workflow 3 – Alignment

Purpose:

Align sequencing reads to the GRCh38 reference genome.

Processes:

- BWA-MEM2
- SAMtools Sort
- SAMtools Index

Output:

- Sorted BAM
- BAM Index

---

### Workflow 4 – Post-Alignment Processing

Purpose:

Improve alignment quality before variant calling.

Processes:

- MarkDuplicates
- Base Quality Score Recalibration
- Apply BQSR

Output:

- Analysis-ready BAM

---

### Workflow 5 – Variant Discovery

Purpose:

Identify high-confidence germline variants.

Processes:

- HaplotypeCaller
- GenotypeGVCFs (optional for multiple samples)
- Variant Filtering

Output:

- Filtered VCF

---

### Workflow 6 – Annotation & Reporting

Purpose:

Generate biologically meaningful results and project reports.

Processes:

- Functional Annotation
- Variant Statistics
- MultiQC (Final)
- Final HTML Report

Output:

- Annotated VCF
- Final Report
- Execution Reports

---

## 4. Execution Strategy

The workflow executes sequentially while allowing parallel execution within independent processes where possible.

---

## 5. Checkpoint Strategy

Major workflow checkpoints:

- Raw QC Complete
- Trimming Complete
- Alignment Complete
- BAM Processing Complete
- Variant Calling Complete
- Annotation Complete
- Report Generation Complete

These checkpoints support workflow resumption and simplify debugging.

---

## 6. Workflow Approval

**Phase:** 9 – Workflow Design

**Status:** Approved

This workflow design defines the execution sequence and logical organization of VariantFlowX Version 1.0.