# Template for Distribution.jl on SLURM

In Julia:

```
] activate . 
instantiate
```

In Bash (can use `;` to do it from Julia REPL), submit job with:

```
sbatch run.sh
```

which submits several jobs to the SLURM queue, each invoking `test.jl`. 

Monitor results with:

```
cat slurm-current.txt
``` 

This should show the list of hosts used in parallel. 

Note: this is not compatible with [zip_depot](https://github.com/UBC-Stat-ML/zip_depot).

Update: not working on Sockeye either, error message saved in sockeye-error.log 
To be continued (or not, this might turn out to be more fragile than MPI)