# Hilbert-snakemake-example

## How to set up

- Add your account name for Hilbert to: `` profile/hilbert_cluster.json ``
- You can specify the location to write stderr and stdout output to in `` profile/hilbert_cluster.json `` (make sure that the folders exist already!). In this example, they are written to log/cluster_jobs/stdout/ and log/cluster_jobs/stderr/
- Snakemake specific parameters can be set in: `` profile/config.yaml ``

You can use any Snakemake workflow, just make sure that you add "resources" to each rule that needs more resources than the default specified in profile/config.yaml (see example Snakefile).


## How to run on Hilbert:

- Install snakemake via conda (I always have problems using snakemake available via "module load"). Details on how to use conda on Hilbert are explained here: https://wiki.hhu.de/display/HPC/Conda

- log in to the login node
- go to the snakemake node: `` ssh snakemake-node ``
- open a screen session: `` screen ``
- activate conda environment that has snakemake installed in it
- run pipeline: `` snakemake --profile profile --cluster-status ./hhu_hilbert.py ``

You can monitor the jobs created by the pipeline on myjam: myjam3.uni-duesseldorf.de/
