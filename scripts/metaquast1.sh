#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 3:00:00
#SBATCH -J binning evaluation megahit_results1
#SBATCH --mail-type=ALL
#SBATCH --markellazax@gmail.com

# Load modules
module load bioinfo-tools
module load quast


# Your commands
 metaquast.py  ~/Genome_Analysis/results/assembly/megahit_results1/final.contigs.fa -o  ~/Genome_Analysis/results/metaquast -t 2  -1 ~/Genome_Analysis/raw_data/DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz -2 ~/Genome_Analysis/raw_data/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz        


