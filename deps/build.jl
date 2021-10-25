using Conda

Conda.add("dolo", :dolo_env; channel="conda-forge")
Conda.add("dolang", :dolo_env; channel="conda-forge")

# using BinDeps
# @BinDeps.setup
# dololib = library_dependency("dolo")
# dolanglib = library_dependency("dolang")


# using CondaBinDeps
# provides(CondaBinDeps.Manager, "dolo", dololib)
# provides(CondaBinDeps.Manager, "dolang", dolanglib)

