#!/bin/bash
#SBATCH --time=48:00:00
#SBATCH --mem=20G
#SBATCH -o WT_supp.out
#SBATCH -p short
#SBATCH -p batch

module load anaconda

cd /scratch/cs/infantbiome/huy/
# Lets create a new folder for our output files
filename="./results/STAR/WT_supp.csv"
out_dir="./06_XBP1_result/WT"
type="WT_supp"

srun python ./07_Pyscript/GP_Inference_XBP1.py $filename $out_dir $type
