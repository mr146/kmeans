#!/bin/bash
make means
for i in {2..12}
do
    export OMP_NUM_THREADS=$i
    for j in {1..15}
    do
        srun --mem=40000 --cpus-per-task=12 kmeans 3 input.txt output.txt
    done
done
