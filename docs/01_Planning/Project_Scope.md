# Project Scope

## 1. Scope Statement

VariantFlowX is designed as a production-grade, modular, and reproducible germline variant calling workflow for short-read whole genome and whole exome sequencing data. The project focuses on implementing an end-to-end pipeline that transforms raw sequencing reads into high-quality annotated germline variants while following modern bioinformatics software engineering practices.

---

## 2. In Scope

Version 1.0 of VariantFlowX will include:

- Germline variant calling workflow
- Nextflow DSL2 modular architecture
- FASTQ to annotated VCF workflow
- Automated quality control
- Read preprocessing
- Sequence alignment
- BAM processing
- Duplicate marking
- Base Quality Score Recalibration (BQSR)
- Variant calling
- Variant filtering
- Functional annotation
- Quality metrics generation
- HTML reporting
- Local execution
- Docker support
- AWS execution profile
- SLURM execution profile
- Resume support
- Benchmark reporting
- Comprehensive documentation
- Automated testing
- Validation using a public dataset

---

## 3. Out of Scope

The following features are intentionally excluded from Version 1.0:

- Somatic variant calling
- Structural variant detection
- Copy number variation analysis
- RNA-Seq analysis
- Long-read sequencing support
- Clinical interpretation
- Pharmacogenomics
- Multi-omics integration
- Machine learning models
- Interactive web dashboards

---

## 4. Project Constraints

- Public datasets only
- Open-source software only
- Reproducible execution
- Cross-platform compatibility
- Containerized execution
- Version-controlled references
- Modular workflow design

---

## 5. Assumptions

- Input sequencing data is paired-end FASTQ.
- Reference genome resources are publicly available.
- Users have access to supported execution environments.
- Required software dependencies are available through containers.

---

## 6. Version 1.0 Deliverables

- Production-ready Nextflow DSL2 workflow
- Modular process library
- Configuration profiles
- HTML analysis report
- Benchmark report
- Validation report
- Architecture documentation
- Testing documentation
- Deployment documentation
- GitHub release

---

## 7. Scope Approval

**Phase:** 2 – Project Scope

**Status:** Approved

This document defines the functional boundaries of VariantFlowX Version 1.0. Any new feature outside this scope will be considered for future releases.