# Circadian Rhythm Analysis
A research project for analyzing circadian rhythm patterns in longitudinal RNA sequencing datasets. Here is a part of my thesis work at Aalto University. The project comprises of three parts: Processing raw RNA-seq data, visualize the gene expressions and their rhythmic features, and perform biological analyses on these time-series data. 

## Data
<<<<<<< HEAD
The genomic datasets with the accession number [GSE54651](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE54651) and [GSE150890](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSM4560260) from the National Library of Medicine (NCBI) are utilized to test the performance of the **Gaussian process** (**GP**). The raw sequencing data pipeline is processed using Triton and additional memory storage provided. The processed data are saved as .csv files and further analyzed to identify circadian rhythm and produce plots with **GP**. For example;
- [KO_arrange.csv](Thesis_code/Data/Longitudinal_RNA_Expression_XBP1/KO_arrange.csv) shows the RNA expression of genes from the replicates every 2h within 2 days 
- [GP_result_KO.csv](Thesis_code/Data/Rhythmic_feature_results/XBP1_res/KO/GP_result_KO.csv) returns the likelihood of whether the series in quesiton are periodic
- [plot_KO.csv](Thesis_code/Data/Rhythmic_feature_results/XBP1_res/KO/plot_KO.csv) stores the variables needed to reconstruct the periodic signal that **GP** proposes

## STAR_Aligner
=======
The genomic datasets with the accession number [GSE54651](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE54651) and [GSE150890](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSM4560260) from the National Library of Medicine (NCBI) are utilized to test the performance of the Gaussian process. The raw sequencing data pipeline is processed using Triton and additional memory storage provided. The provided data serves solely as an illustration of the structure and content of the resulting dataframe.

## STAR
>>>>>>> b19cdc55d178225d2ee9ba9537bd0fa91eb3fba2

[STAR](https://support.illumina.com/help/BS_App_RNASeq_Alignment_OLH_1000000006112/Content/Source/Informatics/STAR_RNAseq.htm) is an aligner used in this experiement to perform longitudinal RNA-seq and the sample shell scripts for building the genome, collecting the data from the accession, and using STAR are in ['STAR_pipline'](Thesis_code/Process_raw_data/STAR_pipeline) folder.

> ⚠️ **Note:** The suffix "_supp" on the .csv files refer to the additional genes from an updated filtering schema. The original filter are strict and unintentionally remove core clock genes with lower expression levels.   

## Analysis
<<<<<<< HEAD
From [core.py](Thesis_code/Analysis/Pyscript/core.py) provided by the supervisor to simulate **GP** periodic kernels, my work is to further expand the utility of the file by creating:
- **GP** Inference files to fit the simulated wave on the RNA series data (2 versions: Null and Full model are needed to compute "LLR" coef)
- **GP** Simulation files to create data for performance testing between **GP** and non-parametric methods (e.g. RAIN and JTK_CYCLE)
- **GP** Bio Analysis files to finalize my findings on my MSc thesis (e.g. [Performance.ipynb](Thesis_code/Analysis/IPython/Performance.ipynb), [LLR_Threshold.ipynb](Thesis_code/Analysis/IPython/LRR_Threshold.ipynb), and [Bio_analysis.ipynb](Thesis_code/Analysis/IPython/Bio_analysis.ipynb))

Files like [JTK_working.ipynb](Thesis_code/Analysis/IPython/JTK_workin.ipynb) and others in the [R_markdown](Thesis_code/Analysis/R_markdown) folder shows how I run the non-parametric methods in question and extract the corresponding rhythmic features.  


=======
>>>>>>> b19cdc55d178225d2ee9ba9537bd0fa91eb3fba2





