#!/bin/bash
#SBATCH --ntasks=10
#SBATCH --nodes=1-10000
#SBATCH -A st-alexbou-1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1024M
#SBATCH --time=0-00:05
#SBATCH --output=slurm-current.txt

srun hostname -s > hostfile
sleep 5

julia --banner=no --compiled-modules=existing --project=@. --machine-file ./hostfile test.jl 