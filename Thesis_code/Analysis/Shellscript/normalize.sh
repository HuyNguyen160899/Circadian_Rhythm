#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --mem=8G
#SBATCH -o normalize_test.out
#SBATCH -p short
#SBATCH -p batch

module load anaconda

cd /scratch/cs/infantbiome/huy/ 

data="SRR11815065"
file=/scratch/cs/infantbiome/huy/results/STAR/${data}/${data}Aligned.sortedByCoord.out.bam
output=/scratch/cs/infantbiome/huy/results/${data}.bedgraph

export PATH=$PATH:$PWD/deepTools-1.5.12/bin/
export PATH=$PATH:$PWD/deepTools-1.5.12/deeptools/

bamCoverage --bam $file -o $output --normalizeUsing RPKM --extendReads



