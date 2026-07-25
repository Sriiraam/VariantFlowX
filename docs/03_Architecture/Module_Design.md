# Module Design

## 1. Objective

Define the responsibility, inputs, outputs, and purpose of each reusable Nextflow DSL2 module used in VariantFlowX.

---

## 2. Module Design Principles

Each module shall:

- Perform one specific task.
- Be reusable across workflows.
- Accept standardized inputs.
- Produce standardized outputs.
- Be independently testable.
- Have no hardcoded paths.

---

## 3. Module Inventory

| Module | Purpose | Input | Output |
|---------|---------|-------|--------|
| FastQC_Raw | Raw read quality assessment | FASTQ | HTML, ZIP |
| fastp | Adapter trimming & quality filtering | FASTQ | Clean FASTQ, JSON, HTML |
| FastQC_Trimmed | Post-trimming quality assessment | FASTQ | HTML, ZIP |
| MultiQC_Raw | Aggregate raw QC reports | FastQC outputs | HTML |
| MultiQC_Trimmed | Aggregate trimmed QC reports | FastQC outputs | HTML |
| BWA_MEM2 | Read alignment | Clean FASTQ | SAM |
| SAMtools_Sort | Coordinate sorting | SAM | Sorted BAM |
| SAMtools_Index | BAM indexing | BAM | BAI |
| MarkDuplicates | Mark PCR duplicates | BAM | Deduplicated BAM, Metrics |
| BaseRecalibrator | Build BQSR model | BAM, Known Sites | Recal Table |
| ApplyBQSR | Apply recalibration | BAM, Table | Recalibrated BAM |
| HaplotypeCaller | Germline variant calling | Recalibrated BAM | GVCF |
| GenotypeGVCFs | Joint genotyping | GVCFs | VCF |
| VariantFiltration | Variant filtering | VCF | Filtered VCF |
| Annotation | Functional annotation | Filtered VCF | Annotated VCF |
| VariantMetrics | Variant statistics | Annotated VCF | Metrics |
| MultiQC_Final | Aggregate final reports | QC Metrics | HTML |
| FinalReport | Generate final HTML report | All pipeline outputs | HTML Report |

---

## 4. Module Dependencies

FastQC_Raw

↓

fastp

↓

FastQC_Trimmed

↓

BWA_MEM2

↓

SAMtools_Sort

↓

SAMtools_Index

↓

MarkDuplicates

↓

BaseRecalibrator

↓

ApplyBQSR

↓

HaplotypeCaller

↓

GenotypeGVCFs

↓

VariantFiltration

↓

Annotation

↓

VariantMetrics

↓

MultiQC_Final

↓

FinalReport

---

## 5. Design Standards

- One tool per module.
- Standardized channel inputs.
- Standardized channel outputs.
- Consistent naming convention.
- Version-controlled software.
- Container compatible.
- Resume compatible.

---

## 6. Future Extension Modules

The architecture supports adding:

- CNV Calling
- Structural Variant Calling
- Mitochondrial Variant Calling
- Pharmacogenomics
- Somatic Variant Calling
- Long-read Analysis

without modifying existing modules.

---

## 7. Module Approval

**Phase:** 10 – Module Design

**Status:** Approved

This module design establishes the reusable software components for VariantFlowX Version 1.0.