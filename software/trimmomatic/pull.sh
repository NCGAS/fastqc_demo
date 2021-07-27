#!/bin/bash

if [ ! $(command -v singularity) ]; then
	module load singularity
fi

singularity pull trimmomatic_v0.39.sif oras://registry.forgemia.inra.fr/gafl/singularity/trimmomatic/trimmomatic:latest
mv -v trimmomatic_v0.39.sif singularity-trimmomatic-0.39.sif
