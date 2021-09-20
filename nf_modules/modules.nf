#!/usr/bin/env nextflow

/*Modulos de prueba para  nextflow */

process splitLetters {
    input:
    val x

    output:
    file 'chunk_*'
    """
    printf '${x}' | split -b 6 - chunk_
    """
}



process convertToUpper {
    input:
    file x

    output:
    stdout

    """
    cat $x | tr '[a-z]' '[A-Z]'
    """
}
