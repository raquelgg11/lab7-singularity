#!/bin/bash 
#SBATCH -p hpc-bio-pacioli 
#SBATCH --chdir=/home/alumno34/lab7-singularity/blast
#SBATCH -J lab7-advanced
#SBATCH --cpus-per-task=1

module load singularity/3.8.0

gunzip zebrafish.1.protein.faa.gz
singularity exec /nas/hdd-0/singularity_images/blast_2.9.0--pl526h3066fca_4.sif makeblastdb -in zebrafish.1.protein.faa -dbtype prot
singularity exec /nas/hdd-0/singularity_images/blast_2.9.0--pl526h3066fca_4.sif blastp -query P04156.fasta.txt -db zebrafish.1.protein.faa -out results-blast.txt

module unload singularity/3.8.0
