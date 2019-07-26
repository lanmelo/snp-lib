#!/bin/bash

mkdir -p /shared/lib/fasta

mkdir /shared/lib/fasta/ensembl-dna
cd /shared/lib/fasta/ensembl-dna

wget ftp://ftp.ensembl.org/pub/release-97/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna_sm.primary_assembly.fa.gz
wget ftp://ftp.ensembl.org/pub/release-75/fasta/homo_sapiens/dna/Homo_sapiens.GRCh37.75.dna_sm.primary_assembly.fa.gz

gunzip *

mv Homo_sapiens.GRCh38.dna_sm.primary_assembly.fa grch38-97.fa
mv Homo_sapiens.GRCh37.75.dna_sm.primary_assembly.fa grch37-75.fa


mkdir /shared/lib/fasta/ensembl-cdna
cd /shared/lib/fasta/ensembl-cdna

wget ftp://ftp.ensembl.org/pub/release-97/fasta/homo_sapiens/cdna/Homo_sapiens.GRCh38.cdna.all.fa.gz
wget ftp://ftp.ensembl.org/pub/release-75/fasta/homo_sapiens/cdna/Homo_sapiens.GRCh37.75.cdna.all.fa.gz

gunzip *

mv Homo_sapiens.GRCh38.cdna.all.fa grch38-97.fa
mv Homo_sapiens.GRCh37.75.cdna.all.fa grch37-75.fa


mkdir /shared/lib/fasta/ucsc
cd /shared/lib/fasta/ucsc

wget http://hgdownload.cse.ucsc.edu/goldenPath/hg19/bigZips/hg19.fa.gz
wget http://hgdownload.cse.ucsc.edu/goldenPath/hg38/bigZips/hg38.fa.gz

gunzip *
