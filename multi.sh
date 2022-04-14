#!/usr/bin/env bash

# A function that performs fastqc given a file containing path of the reads
quality(){
	grep FASTQC config | cut -f2 -d":" | xargs -I%   bash -c 'ls %/*gz' | parallel fastqc
	grep MULTIQC config  | cut -f2 -d":" | xargs -I% multiqc %
}

quality
