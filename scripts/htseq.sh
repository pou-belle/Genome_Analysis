#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 10
#SBATCH -t 8:00:00
#SBATCH -J HTseq
#SBATCH --mail-type=ALL
#SBATCH --mail-user markellazax@gmail.com


# Load modules
module load bioinfo-tools
module load htseq


dir=/domus/h1/marke/Genome_Analysis/results/metabat/metabat1
#Commands  
for i in {1..12}
do
	htseq-count -f bam  -r pos -t  CDS  -i  ID --stranded=no ${dir}/metabat1.$i.fa_metabat1_SRR4342137.sorted.bam <(sed '/##FASTA/Q' /domus/h1/marke/Genome_Analysis/results/prokka/prokka1/prokka1_$i/prokka1_$i.gff) > /domus/h1/marke/Genome_Analysis/results/htseq/htseq1/htseq1_$i.out
done





#prokka 2
dir=/domus/h1/marke/Genome_Analysis/results/metabat/metabat2

 for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 22 
 do 
	htseq-count -f bam  -r pos -t  CDS  -i  ID --stranded=no ${dir}/metabat2.$i.fa_metabat2_SRR4342139.sorted.bam <(sed '/##FASTA/Q' /domus/h1/marke/Genome_Analysis/results/prokka/prokka2/prokka2_$i/prokka2_$i.gff) > /domus/h1/marke/Genome_Analysis/results/htseq/htseq2/htseq2_$i.out

done

