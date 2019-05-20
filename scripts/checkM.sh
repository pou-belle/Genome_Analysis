#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 8:00:00
#SBATCH -J Bins Evaluation checkM
#SBATCH --mail-type=ALL
#SBATCH --markellazax@gmail.com

# Load modules
module load bioinfo-tools
module load  CheckM/1.0.12

# Your commands
checkm lineage_wf -t 8 -x fa   ~/Genome_Analysis/results/metabat/metabat1  ~/Genome_Analysis/results/checkM/checkM1
checkm lineage_wf -t 8 -x fa   ~/Genome_Analysis/results/metabat/metabat2  ~/Genome_Analysis/results/checkM/checkM2

