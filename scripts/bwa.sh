#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 8:00:00
#SBATCH -J BWA Aligner
#SBATCH --mail-type=ALL
#SBATCH --mail-user markellazax@gmail.com


# Load modules
module load bioinfo-tools
module load  bwa/0.7.17

#Commands 

#index
for bin in /domus/h1/marke/Genome_Analysis/results/metabat/metabat1/*
do
	bwa index $bin
done

for bin in /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/*
do
	bwa index $bin
done


for bin in /domus/h1/marke/Genome_Analysis/results/metabat/metabat1/*.fa
do
	echo "Running $bin"
	bwa mem $bin  SRR4342137_out_1P.fastq.gz  SRR4342137_out_2P.fastq.gz > ${bin}_metabat1_SRR4342137.sam
	bwa mem $bin <(zcat SRR4342137_out_1U.fastq.gz SRR4342137_out_2U.fastq.gz) >> ${bin}_metabat1_SRR4342137.sam
    bwa mem $bin SRR4342139_out_1P.fastq.gz SRR4342139_out_2P.fastq.gz > ${bin}_metabat1_SRR4342139.sam
    bwa mem $bin <(zcat SRR4342139_out_1U.fastq.gz SRR4342139_out_2U.fastq.gz) >>${bin}_metabat1_SRR4342139.sam
done


for bin in /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/*.fa
do
	echo "Running $bin"
	bwa mem $bin  SRR4342137_out_1P.fastq.gz  SRR4342137_out_2P.fastq.gz > ${bin}_metabat2_SRR4342137.sam
	bwa mem $bin <(zcat SRR4342137_out_1U.fastq.gz SRR4342137_out_2U.fastq.gz) >> ${bin}_metabat2_SRR4342137.sam
    bwa mem $bin SRR4342139_out_1P.fastq.gz SRR4342139_out_2P.fastq.gz > ${bin}_metabat2_SRR4342139.sam
    bwa mem $bin <(zcat SRR4342139_out_1U.fastq.gz SRR4342139_out_2U.fastq.gz) >>${bin}_metabat2_SRR4342139.sam


done



