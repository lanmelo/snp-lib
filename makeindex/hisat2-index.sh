#!/bin/bash

mkdir /shared/lib/indexes/hisat2-$1
cd /shared/lib/indexes/hisat2-$1

module load hisat2
hisat2-build $2 /shared/lib/indexes/hisat2-$1/hisat2-$1
