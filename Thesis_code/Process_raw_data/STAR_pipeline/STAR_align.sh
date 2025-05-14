#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --mem=12G
#SBATCH -o test_final.out
#SBATCH -p short
#SBATCH -p batch
#SBATCH -e test_final.err
#SBATCH -n 4

cd /scratch/cs/infantbiome/huy/05_XBP1_data
# define variables
index="./genome_ref"
# get our data files
FQ_DIR="./RNA_seq"

export PATH=$PATH:$PWD/STAR-2.7.10b/bin/Linux_x86_64_static/ 

for base in SRR11815062 SRR11815063 SRR11815064  
do
    echo $base
    # 1st file
    fq1=$FQ_DIR/${base}_1.fastq
    #2nd file
    fq2=$FQ_DIR/${base}_2.fastq
    # align with STAR

    STAR --runThreadN 4 \
         --genomeDir $index \
         --outFileNamePrefix ../results/STAR/${base} \
         --readFilesIn $fq1 $fq2 \
         --outSAMtype BAM   SortedByCoordinate \
         --quantMode GeneCounts

done

echo "done!"
     
       
