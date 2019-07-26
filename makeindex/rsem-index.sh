#!/bin/bash

mkdir /shared/lib/indexes/rsem-$1
cd /shared/lib/indexes/rsem-$1

module load rsem

rsem-prepare-reference --gtf $3 $2 /shared/lib/indexes/rsem-$1/rsem-$1
