#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 8:00:00
#SBATCH -J Prokka Annotation_Final
#SBATCH --mail-type=ALL
#SBATCH --markellazax@gmail.com

# Load modules
module load bioinfo-tools
module load prokka/1.12-12547ca
# Your commands
mkdir -p  ~/Genome_Analysis/results/prokka/prokka1  ~/Genome_Analysis/results/prokka/prokka2


#Bacteria for metabat
prokka --force  --prefix   prokka1_12   --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka1_12  /domus/h1/marke/Genome_Analysis/results/metabat/metabat1/metabat1.12.fa
prokka --force  --prefix   prokka1_11   --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka1_11  /domus/h1/marke/Genome_Analysis/results/metabat/metabat1/metabat1.11.fa
prokka --force  --prefix   prokka1_8   --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka1_8  /domus/h1/marke/Genome_Analysis/results/metabat/metabat1/metabat1.8.fa 
prokka --force  --prefix   prokka1_3   --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka1_3  /domus/h1/marke/Genome_Analysis/results/metabat/metabat1/metabat1.3.fa 
prokka --force  --prefix   prokka1_1   --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka1_1  /domus/h1/marke/Genome_Analysis/results/metabat/metabat1/metabat1.1.fa
prokka --force  --prefix   prokka1_2   --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka1_2  /domus/h1/marke/Genome_Analysis/results/metabat/metabat1/metabat1.2.fa 
prokka --force  --prefix   prokka1_7   --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka1_7  /domus/h1/marke/Genome_Analysis/results/metabat/metabat1/metabat1.7.fa 
prokka --force  --prefix   prokka1_5   --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka1_5  /domus/h1/marke/Genome_Analysis/results/metabat/metabat1/metabat1.5.fa 
prokka --force  --prefix   prokka1_9   --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka1_9  /domus/h1/marke/Genome_Analysis/results/metabat/metabat1/metabat1.9.fa 
prokka --force  --prefix   prokka1_6   --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka1_6  /domus/h1/marke/Genome_Analysis/results/metabat/metabat1/metabat1.6.fa 


#Bacteria for metabat2
prokka --force  --prefix   prokka2_1  --addgenes    --outdir  ~/Genome_Analysis/results/prokka/prokka2_1  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.1.fa  
prokka --force  --prefix   prokka2_11 --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2_11  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.11.fa 
prokka --force  --prefix   prokka2_12 --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2_12  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.12.fa 
prokka --force  --prefix   prokka2_17 --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2_17  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.17.fa
prokka --force  --prefix   prokka2_16 --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2_16  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.16.fa 
prokka --force  --prefix   prokka2_4  --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2_4  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.4.fa 
prokka --force  --prefix   prokka2_7  --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2_7  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.7.fa 
prokka --force  --prefix   prokka2_5  --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2_5  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.5.fa 
prokka --force  --prefix   prokka2_15 --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2_15  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.15.fa
prokka --force  --prefix   prokka2_9  --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2_9  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.9.fa
prokka --force  --prefix   prokka2_3  --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2_3  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.3.fa
prokka --force  --prefix   prokka2_14 --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2_14  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.14.fa
prokka --force  --prefix   prokka2_6  --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2_6  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.6.fa
prokka --force  --prefix   prokka2_20 --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2_20  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.20.fa
prokka --force  --prefix   prokka2_18 --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2_18  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.18.fa
prokka --force  --prefix   prokka2_13 --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2_13  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.13.fa
prokka --force  --prefix   prokka2_22 --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2_22  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.22.fa
prokka --force  --prefix   prokka2_20 --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2_20  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.20.fa
prokka --force  --prefix   prokka2_10 --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2_10  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.10.fa
prokka --force  --prefix   prokka2_8  --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2_8  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.8.fa



#Archaea for metabat1
prokka --force --kingdom Archaea  --prefix   prokka1_4    --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka1_4  /domus/h1/marke/Genome_Analysis/results/metabat/metabat1/metabat1.4.fa 
prokka --force --kingdom Archaea  --prefix   prokka1_10    --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka1_10  /domus/h1/marke/Genome_Analysis/results/metabat/metabat1/metabat1.10.fa 



#Archaea for metabat2
prokka --force --kingdom Archaea   --prefix prokka2_19 --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2.19 /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.19.fa 
prokka --force --kingdom Archaea   --prefix prokka2_2  --addgenes   --outdir  ~/Genome_Analysis/results/prokka/prokka2.2  /domus/h1/marke/Genome_Analysis/results/metabat/metabat2/metabat2.2.fa





