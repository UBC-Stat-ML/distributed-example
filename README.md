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

which submits 50 jobs to the SLURM queue, each invoking `test.jl`. 

Monitor results with:

```
cat slurm-current.txt
``` 

This should show the list of hosts used in parallel. 
