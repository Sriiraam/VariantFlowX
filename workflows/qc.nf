include { FASTQC }  from '../modules/qc/fastqc'
include { MULTIQC } from '../modules/qc/multiqc'

workflow QC {

    take:
    reads

    main:

    fastqc_results = FASTQC(reads)

    MULTIQC(fastqc_results.out.html)

    emit:
    fastqc_results
}