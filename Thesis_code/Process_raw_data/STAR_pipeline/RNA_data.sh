#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --mem=12G
#SBATCH -o download.out
#SBATCH -p short
#SBATCH -p batch


module load miniconda
conda create -y -n ncbi-tools -c conda-forge -c bioconda -c defaults sra-tools=2.10.1 entrez-direct=13.9
conda create -y -n pysradb -c conda-forge -c bioconda -c defaults python=3.7 pysradb

conda deactivate
conda activate pysradb
export PATH=$PATH:$PWD/sratoolkit.3.0.1-ubuntu64/bin 

for accession in $(cut -f 2 PRJNA633943-info-subset-cont.tsv); do
    printf "\n  Working on: ${accession}\n\n"
    fasterq-dump ${accession}
done
