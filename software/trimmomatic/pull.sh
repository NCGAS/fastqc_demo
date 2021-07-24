#!/bin/bash

if [ ! $(command -v singularity) ]; then
	module load singularity
fi

singularity pull https://depot.galaxyproject.org/singularity/trimmomatic:0.35--hdfd78af_7
mv -v trimmomatic:0.35* singularity-trimmomatic-0.35.sif
