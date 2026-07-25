#!/usr/bin/env nextflow
nextflow.enable.dsl = 2

include { QC }                from './qc'
include { PREPROCESSING }     from './preprocessing'
include { ALIGNMENT }         from './alignment'
include { POSTPROCESSING }    from './postprocessing'
include { VARIANT_CALLING }   from './variant_calling'
include { ANNOTATION }        from './annotation'
include { REPORTING }         from './reporting'

workflow VariantFlowX {

    QC()

    PREPROCESSING()

    ALIGNMENT()

    POSTPROCESSING()

    VARIANT_CALLING()

    ANNOTATION()

    REPORTING()

}