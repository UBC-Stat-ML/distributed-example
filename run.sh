#!/bin/bash
#SBATCH --ntasks=50
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1024M
#SBATCH --time=0-01:30
#SBATCH --output=slurm-current.txt

srun hostname -s > hostfile
sleep 5
julia --banner=no --compiled-modules=existing --project=@. --machine-file ./hostfile test.jl 