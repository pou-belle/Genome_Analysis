#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 3:00:00
#SBATCH -J binning evaluation megahit_results2
#SBATCH --mail-type=ALL
#SBATCH --markellazax@gmail.com

# Load modules
module load bioinfo-tools
module load quast


# Your commands
 metaquast.py  ~/Genome_Analysis/results/assembly/megahit_results2/final.contigs.fa -1 ~/Genome_Analysis/raw_data/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz 
 -2 ~/Genome_Analysis/raw_data/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz
