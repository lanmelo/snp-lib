#!/bin/bash

mkdir /shared/lib/indexes/star-$1
cd /shared/lib/indexes/star-$1

module load star

STAR --runThreadN 8 \
--runMode genomeGenerate \
--genomeDir /shared/lib/indexes/star-$1 \
--genomeFastaFiles $2 \
--sjdbGTFfile $3
