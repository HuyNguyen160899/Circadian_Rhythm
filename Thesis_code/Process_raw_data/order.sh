#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --mem=8G
#SBATCH -o movin.out
#SBATCH -p short
#SBATCH -p batch

cd /scratch/cs/infantbiome/huy/results/STAR/




for base in SRR11815062 SRR11815063 SRR11815064 

do
    echo $base
    mkdir ./${base}
    mv ./${base}* ./${base}
done