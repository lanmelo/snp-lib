#!/bin/bash

mkdir /shared/lib/indexes/bwa-$1
cd /shared/lib/indexes/bwa-$1

module load bwa
bwa index $2 -p /shared/lib/indexes/bwa-$1/bwa-$1
