#!/bin/bash

cd /shared/lib/makeindex

sbatch --exclusive bwa-index.sh 	hg19		/shared/lib/fasta/ucsc/hg19.fa
sbatch --exclusive bwa-index.sh		hg38		/shared/lib/fasta/ucsc/hg38.fa
sbatch --exclusive bwa-index.sh		grch37-75	/shared/lib/fasta/ensembl-dna/grch37-75.fa
sbatch --exclusive bwa-index.sh		grch38-97	/shared/lib/fasta/ensembl-dna/grch38-97.fa

sbatch --exclusive hisat2-index.sh    	hg19            /shared/lib/fasta/ucsc/hg19.fa
sbatch --exclusive hisat2-index.sh    	hg38            /shared/lib/fasta/ucsc/hg38.fa
sbatch --exclusive hisat2-index.sh    	grch37-75	/shared/lib/fasta/ensembl-dna/grch37-75.fa
sbatch --exclusive hisat2-index.sh    	grch38-97	/shared/lib/fasta/ensembl-dna/grch38-97.fa

sbatch --exclusive bowtie2-index.sh	hg19            /shared/lib/fasta/ucsc/hg19.fa
sbatch --exclusive bowtie2-index.sh	hg38            /shared/lib/fasta/ucsc/hg38.fa
sbatch --exclusive bowtie2-index.sh	grch37-75       /shared/lib/fasta/ensembl-dna/grch37-75.fa
sbatch --exclusive bowtie2-index.sh	grch38-97       /shared/lib/fasta/ensembl-dna/grch38-97.fa

sbatch --exclusive bowtie-index.sh	hg19            /shared/lib/fasta/ucsc/hg19.fa
sbatch --exclusive bowtie-index.sh	hg38            /shared/lib/fasta/ucsc/hg38.fa
sbatch --exclusive bowtie-index.sh	grch37-75       /shared/lib/fasta/ensembl-dna/grch37-75.fa
sbatch --exclusive bowtie-index.sh	grch38-97       /shared/lib/fasta/ensembl-dna/grch38-97.fa

sbatch --exclusive kallisto-index.sh	grch37-75	/shared/lib/fasta/ensembl-cdna/grch37-75.fa
sbatch --exclusive kallisto-index.sh	grch38-97	/shared/lib/fasta/ensembl-cdna/grch38-97.fa

sbatch --exclusive salmon-index.sh    	grch37-75       /shared/lib/fasta/ensembl-cdna/grch37-75.fa
sbatch --exclusive salmon-index.sh    	grch38-97       /shared/lib/fasta/ensembl-cdna/grch38-97.fa

sbatch --exclusive rsem-index.sh	grch37-75	/shared/lib/fasta/ensembl-dna/grch37-75.fa		/shared/lib/gtf/ensembl/grch37-75.gtf
sbatch --exclusive rsem-index.sh	grch38-97	/shared/lib/fasta/ensembl-dna/grch38-97.fa		/shared/lib/gtf/ensembl/grch38-97.gtf

sbatch --exclusive star-index.sh	grch37-75	/shared/lib/fasta/ensembl-dna/grch37-75.fa		/shared/lib/gtf/ensembl/grch37-75.gtf
sbatch --exclusive star-index.sh	grch38-97	/shared/lib/fasta/ensembl-dna/grch38-97.fa		/shared/lib/gtf/ensembl/grch38-97.gtf
