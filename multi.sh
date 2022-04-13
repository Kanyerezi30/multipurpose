#!/usr/bin/env bash

# A function that performs fastqc given a file containing path of the reads
fastqc(){
	for i in `cat $1`
	do
		fastqc $i
	done
}


fastqc
