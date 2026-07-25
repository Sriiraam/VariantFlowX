# System Architecture

## 1. Objective

Design a modular, scalable, and maintainable software architecture for VariantFlowX using Nextflow DSL2. The architecture should separate workflow orchestration, reusable modules, configuration, and reporting while supporting reproducibility and multiple execution environments.

---

## 2. Architecture Style

VariantFlowX adopts a modular Nextflow DSL2 architecture based on the following principles:

- Thin workflow orchestration
- Reusable process modules
- Configuration-driven execution
- Separation of concerns
- Reproducible execution
- Cloud portability

---

## 3. High-Level Architecture

User
│
▼
main.nf
│
▼
workflows/
│
├── preprocessing.nf
├── alignment.nf
├── postprocessing.nf
├── variant_calling.nf
├── annotation.nf
└── reporting.nf
│
▼
modules/
│
├── fastqc.nf
├── fastp.nf
├── bwa_mem2.nf
├── samtools_sort.nf
├── markduplicates.nf
├── bqsr.nf
├── haplotypecaller.nf
├── genotypegvcfs.nf
├── variant_filter.nf
├── annotation.nf
└── multiqc.nf

---

## 4. Execution Flow

User Command

↓

main.nf

↓

Workflow Selection

↓

Module Execution

↓

Results Collection

↓

Final Report Generation

---

## 5. Design Principles

- One responsibility per module
- Reusable workflows
- No duplicated code
- Configuration-driven execution
- Independent testing
- Clear separation between workflows and modules

---

## 6. Scalability

The architecture supports:

- Local execution
- Docker
- AWS
- SLURM HPC
- Future Kubernetes support

---

## 7. Architecture Approval

**Phase:** 8 – System Architecture

**Status:** Approved

The architecture defined in this document serves as the software blueprint for VariantFlowX Version 1.0.