#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH  -p core
#SBATCH -n 2
#SBATCH  -t 2:00:00
#SBATCH-J Assembly_evaluation 
#SBATCH--mail-type=ALL
#SBATCH--mail-user markellazax@gmail.com

# Load modules
module load bioinfo-tools
module load quast

#commands
metaquast.py  ~/results/megahit_results2/final.contigs.fa  -1 ~/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz  -2 ~/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz   -o  ~/results/aevaluation2 
