#!/bin/bash
#SBATCH -A ACCOUNT
#SBATCH --qos=lowpri
#SBATCH --mail-type=ALL
#SBATCH --mail-user=EMAIL
#SBATCH --job-name=teszt
#SBATCH -n 8
#SBATCH --time=01:00
#SBATCH -o slurm.out
/opt/nce/bin/numainfo
mpirun $SLURM_NTASKS ./teszt.bin
