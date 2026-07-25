#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { VariantFlowX } from './workflows/variantflowx'

workflow {

    VariantFlowX()

}