#!/bin/bash

mkdir /shared/lib/indexes/bowtie2-$1
cd /shared/lib/indexes/bowtie2-$1

module load bowtie2
bowtie2-build $2 /shared/lib/indexes/bowtie2-$1/bowtie2-$1

