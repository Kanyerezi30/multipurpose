#!/usr/bin/env bash

# A function that performs fastqc given a file containing path of the reads
quality(){
	cat $1 | parallel fastqc
}

quality $@
