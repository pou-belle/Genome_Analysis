#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 8:00:00
#SBATCH -J DNA_Assembly_secondpair
#SBATCH--mail-type=ALL
#SBATCH--mail-user markellazax@gmail.com

# Load modules
module load bioinfo-tools
module load megahit 

# Your commands
megahit -1  ~/DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz  -2 ~/DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz  --kmin-1pass --k-min 65 --k-max 105 --k-step 10  -o ~/results/megahit_results2
