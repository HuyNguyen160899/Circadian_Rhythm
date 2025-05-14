#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --mem=8G
#SBATCH -o Criteria_3.out
#SBATCH -p short
#SBATCH -p batch

module load anaconda

cd /scratch/cs/infantbiome/huy/
# Lets create a new folder for our output files

filename="./03_Simulated_data/Criteria_3.csv"
out_dir="./04_Simulated_result/GP/"
srun python ./07_Pyscript/GP_Inference_Simulate.py $filename $out_dir

echo "done!"