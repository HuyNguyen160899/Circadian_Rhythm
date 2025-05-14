#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --mem=8G
#SBATCH -o test_phase.out
#SBATCH -p short
#SBATCH -p batch

module load anaconda

cd /scratch/cs/infantbiome/huy/
# Lets create a new folder for our output files
for data in n_01

do
    echo $data
    filename="./03_Simulated_data/${data}.csv"
    out_dir="./test_phase/"
    srun python ./07_Pyscript/GP_Inference_Atlas.py $filename $out_dir $data
done

echo "done!"
