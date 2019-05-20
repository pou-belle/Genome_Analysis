#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 20:00:00
#SBATCH -J Phylophlan Results
#SBATCH --mail-type=ALL
#SBATCH --mail-user markellazax@gmail.com

# Load modules
module load  bioinfo-tools
module load  phylophlan/0.99
module load  python/3.7.2
module load  biopython/1.73-py3
module load  FastTree/2.1.10
module load  muscle/3.8.1551
module load  usearch/5.2.32

phylophlan.py -i -t   ~/nsegata-phylophlan-1d174e34b2ae/input/phylophlan1 --nproc 4
phylophlan.py -i -t   ~/nsegata-phylophlan-1d174e34b2ae/input/phylophlan2 --nproc 4