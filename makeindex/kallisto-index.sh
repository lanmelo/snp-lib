#!/bin/bash

mkdir /shared/lib/indexes/kallisto-$1
cd /shared/lib/indexes/kallisto-$1

module load kallisto
kallisto index -i kallisto-$1 $2
