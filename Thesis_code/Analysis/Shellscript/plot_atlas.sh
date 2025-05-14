#!/bin/bash
#SBATCH --time=96:00:00
#SBATCH --mem=24G
#SBATCH -o WFat_supp.out
#SBATCH -p short
#SBATCH -p batch

module load anaconda

cd /scratch/cs/infantbiome/huy/
# Lets create a new folder for our output files
filename="./01_Atlas_data/WFat_supp.csv"
out_dir="./02_Atlas_result/WFat"
type="WFat"

srun python ./07_Pyscript/GP_Inference_Atlas.py $filename $out_dir $type