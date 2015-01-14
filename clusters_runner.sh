#!/bin/bash -v
mpiset 7
export OMP_NUM_THREADS=10
make gen
make means
for clusters in {2..20}
do
    ./gen 2 1000000 $clusters input.txt
    for j in {1..10}
    do
        srun --mem=40000 --cpus-per-task=12 kmeans $clusters input.txt output.txt
    done
done
