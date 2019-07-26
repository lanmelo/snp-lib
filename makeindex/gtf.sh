#!/bin/bash

mkdir -p /shared/lib/gtf

mkdir /shared/lib/gtf/ensembl
cd /shared/lib/gtf/ensembl

wget ftp://ftp.ensembl.org/pub/release-97/gtf/homo_sapiens/Homo_sapiens.GRCh38.97.gtf.gz
wget ftp://ftp.ensembl.org/pub/release-75/gtf/homo_sapiens/Homo_sapiens.GRCh37.75.gtf.gz

gunzip *

mv Homo_sapiens.GRCh38.97.gtf grch38-97.gtf
mv Homo_sapiens.GRCh37.75.gtf grch37-75.gtf


cd /shared/lib/gtf/ucsc

tar -xvzf UCSC.gtf.tar.gz
rm UCSC.gtf.tar.gz
