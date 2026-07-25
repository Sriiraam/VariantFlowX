# ADR-0001: Design Freeze

- **Status:** Accepted
- **Date:** YYYY-MM-DD
- **Authors:** Sriram B

---

# Context

VariantFlowX is intended to be a production-grade, modular, and reproducible germline variant calling workflow developed using Nextflow DSL2. Before implementation, the overall software architecture, workflow organization, module boundaries, configuration strategy, and documentation structure have been reviewed and approved.

Freezing the design at this stage minimizes architectural changes during implementation, reduces technical debt, and promotes maintainability.

---

# Decision

The following architectural decisions are approved and frozen for Version 1.0.

## Biological Scope

- Germline Variant Calling
- Whole Exome Sequencing (WES)
- Illumina Paired-End Sequencing
- GRCh38 Reference Genome

---

## Pipeline Scope

FASTQ

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

Functional Annotation

↓

Quality Metrics

↓

Final HTML Report

---

## Software Architecture

- Nextflow DSL2
- Modular process design
- Workflow orchestration
- Configuration-driven execution
- Container-ready
- Cloud-ready

---

## Execution Environments

- Local
- Docker
- AWS
- SLURM

---

## Repository Structure

The repository structure documented in
Directory_Architecture.md
is approved and frozen.

---

## Configuration Strategy

The configuration architecture documented in
Configuration_Strategy.md
is approved and frozen.

---

## Documentation Strategy

All engineering documentation shall be maintained under the docs/ directory following the approved documentation structure.

---

# Consequences

Implementation shall follow the approved architecture.

Major architectural changes after this point require a new Architecture Decision Record (ADR).

Minor implementation improvements are permitted provided they do not alter the approved system architecture.

---

# Status

Approved for Version 1.0.