# Template for Distribution.jl on SLURM

In Julia:

```
] activate . 
instantiate
```

In Bash: (can use `;` to do it from Julia REPL):

```
./run.sh
```

which invokes `test.jl` on 50 processes. 

Monitor results with:

```
cat slurm-current.txt
``` 

This should show the list of hosts used in parallel. 
