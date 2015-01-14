#!/bin/bash -v
mpiset 7
export OMP_NUM_THREADS=10
make gen
make means
for points in {100000..2000000..100000}
do
    ./gen 2 $points 5 input.txt
    for j in {1..10}
    do
        srun --mem=40000 --cpus-per-task=12 kmeans 5 input.txt output.txt
    done
done
