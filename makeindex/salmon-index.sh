#!/bin/bash

cd /shared/lib/indexes

module load salmon
salmon index -t $2 -i salmon-$1
