using Distributed
using DistributedArrays.SPMD

# Note: addproc() should NOT be used!

@everywhere function foo()
    @show gethostname()
end

SPMD.spmd(foo)