#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 10
#SBATCH -t 8:00:00
#SBATCH -J BWA Aligner
#SBATCH --mail-type=ALL
#SBATCH --mail-user markellazax@gmail.com


# Load modules
module load bioinfo-tools
module load  bwa/0.7.17
module load samtools

#Commands 

#index
for bin in /domus/h1/marke/Genome_Analysis/results/metabat/metabat1/*.fa
do
	bwa index $bin
done

for bin in /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/*.fa
do
	bwa index $bin
done

r=/domus/h1/marke/Genome_Analysis/results/rna_trimmed_results

for bin in /domus/h1/marke/Genome_Analysis/results/metabat/metabat1/*.fa
do
	echo "Running $bin"
	bwa mem -t 10 $bin  $r/SRR4342137_out_1P.fastq.gz  $r/SRR4342137_out_2P.fastq.gz > ${bin}_metabat1_SRR4342137.sam
	bwa mem  -t 10 $bin <(zcat $r/SRR4342137_out_1U.fastq.gz $r/SRR4342137_out_2U.fastq.gz) >> ${bin}_metabat1_SRR4342137.sam

	samtools view -S -b  ${bin}_metabat1_SRR4342137.sam>${bin}_metabat1_SRR4342137.bam
	samtools sort -@ 10  ${bin}_metabat1_SRR4342137.bam -o ${bin}_metabat1_SRR4342137.sorted.bam
	rm ${bin}_metabat1_SRR4342137.sam
	rm ${bin}_metabat1_SRR4342137.bam

    bwa mem  -t 10 $bin $r/SRR4342139_out_1P.fastq.gz $r/SRR4342139_out_2P.fastq.gz > ${bin}_metabat1_SRR4342139.sam
    bwa mem  -t 10 $bin <(zcat $r/SRR4342139_out_1U.fastq.gz $r/SRR4342139_out_2U.fastq.gz) >>${bin}_metabat1_SRR4342139.sam

    samtools view -S -b  ${bin}_metabat1_SRR4342139.sam>${bin}_metabat1_SRR4342139.bam
	samtools sort -@ 10  ${bin}_metabat1_SRR4342139.bam -o ${bin}_metabat1_SRR4342139.sorted.bam
	rm ${bin}_metabat1_SRR4342139.sam
	rm ${bin}_metabat1_SRR4342139.bam

   
done 


for bin in /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/*.fa
do
	echo "Running $bin"
	bwa mem  -t 10 $bin  $r/SRR4342137_out_1P.fastq.gz  $r/SRR4342137_out_2P.fastq.gz > ${bin}_metabat2_SRR4342137.sam
	bwa mem  -t 10 $bin <(zcat $r/SRR4342137_out_1U.fastq.gz $r/SRR4342137_out_2U.fastq.gz) >> ${bin}_metabat2_SRR4342137.sam

    samtools view -S -b  ${bin}_metabat2_SRR4342137.sam>${bin}_metabat2_SRR4342137.bam
	samtools sort -@ 10  ${bin}_metabat2_SRR4342137.bam -o ${bin}_metabat2_SRR4342137.sorted.bam
	rm ${bin}_metabat2_SRR4342137.sam
	rm ${bin}_metabat2_SRR4342137.bam


    bwa mem  -t 10 $bin $r/SRR4342139_out_1P.fastq.gz $r/SRR4342139_out_2P.fastq.gz > ${bin}_metabat2_SRR4342139.sam
    bwa mem  -t 10 $bin <(zcat $r/SRR4342139_out_1U.fastq.gz $r/SRR4342139_out_2U.fastq.gz) >>${bin}_metabat2_SRR4342139.sam

    samtools view -S -b  ${bin}_metabat2_SRR4342139.sam>${bin}_metabat2_SRR4342139.bam
	samtools sort -@ 10  ${bin}_metabat2_SRR4342139.bam -o ${bin}_metabat2_SRR4342139.sorted.bam
	rm ${bin}_metabat2_SRR4342139.sam
	rm ${bin}_metabat2_SRR4342139.bam


done



