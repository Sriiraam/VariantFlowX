# ADR-0002: Benchmark Dataset Freeze

## Status

Accepted

---

## Context

VariantFlowX requires a benchmark dataset that is:

- Publicly available
- Scientifically validated
- Reproducible
- Compatible with GATK Best Practices
- Suitable for multi-sample joint genotyping
- Computationally practical for development

Several options were evaluated, including:

- Single-sample NA12878
- Five mixed GIAB benchmark samples
- 1000 Genomes samples
- GIAB Ashkenazim Trio

---

## Decision

VariantFlowX Version 1.0 will use the GIAB Ashkenazim Trio.

Samples:

- HG002 (NA24385)
- HG003 (NA24149)
- HG004 (NA24143)

Pipeline:

FASTQ
→ QC
→ Trimming
→ Alignment
→ Post-processing
→ GVCF Generation
→ Joint Genotyping
→ Annotation
→ Reporting

---

## Rationale

This dataset provides:

- High-quality benchmark genomes
- Public validation resources
- Consistent sequencing methodology
- Real-world multi-sample analysis
- Manageable compute requirements

The workflow architecture remains scalable to larger cohorts through the samplesheet design.

---

## Consequences

Version 1.0 demonstrates:

- Multi-sample execution
- Parallel processing
- Joint genotyping
- Cohort VCF generation

Future releases can expand to larger cohorts without architectural changes.