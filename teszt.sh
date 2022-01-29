#!/bin/bash
#SBATCH -A ACCOUNT
#SBATCH --qos=lowpri
#SBATCH --mail-type=ALL
#SBATCH --mail-user=EMAIL
#SBATCH --job-name=teszt
#SBATCH -n 8
#SBATCH --time=00:05
#SBATCH -o slurm.out
/opt/nce/bin/numainfo
OMP_NUM_THREADS=$SLURM_NTASKS ./teszt.bin
