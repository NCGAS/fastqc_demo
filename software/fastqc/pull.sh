#!/bin/bash

if [ ! $(command -v singularity) ]; then
	module load singularity
fi

singularity pull https://depot.galaxyproject.org/singularity/fastqc:0.11.9--hdfd78af_1
mv -v fastqc:0.11* singularity-fastqc-0.11.9.sif
