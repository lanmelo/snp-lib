#!/bin/bash

mkdir /shared/lib/indexes/bowtie-$1
cd /shared/lib/indexes/bowtie-$1

module load bowtie
bowtie-build $2 /shared/lib/indexes/bowtie-$1/bowtie-$1

