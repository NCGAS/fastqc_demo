#!/bin/bash

if [ ! $(command -v singularity) ]; then
	module load singularity
fi

singularity pull https://depot.galaxyproject.org/singularity/multiqc:1.11--pyhdfd78af_0
mv -v multiqc:1.11* singularity-multiqc-1.11.sif
