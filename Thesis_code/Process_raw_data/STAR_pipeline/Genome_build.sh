#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --mem=12G
#SBATCH -o build.out
#SBATCH -p short
#SBATCH -p batch

cd /scratch/work/nguyenh32/Data_collection/ 

export PATH=$PATH:$PWD/STAR-2.7.10b/bin/Linux_x86_64_static/ 

gtf=$PWD/Mouse_ref/GCF_000001635.27_GRCm39_genomic.gtf

genome=$PWD/Mouse_ref/GCF_000001635.27_GRCm39_genomic.fna

STAR --runThreadN 4 --runMode genomeGenerate --genomeDir $PWD/genome_ref --genomeFastaFiles $genome --sjdbGTFfile $gtf --sjdbOverhang 100 