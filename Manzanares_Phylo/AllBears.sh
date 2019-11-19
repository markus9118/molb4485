#!/bin/bash
#SBATCH -J RAxML
#SBATCH -n 1
#SBATCH -t 30:00
#SBATCH --mem=20g
#SBATCH --mail-type=ALL
#SBATCH --mail-user=mmanzana@uwyo.edu
#SBATCH --account=inbre-train

#SBATCH --ntasks-per-node=8
#SBATCH --account=inbre-train
#SBATCH partition=inv-inbre
echo "Starting ramxlHPC run at $(date)"

module load swset gcc raxml

#This next bit of code is all on one line
raxmlHPC-PTHREADS-AVX -T 8 -f a -m GTRGAMMA -p 618 -N 2  -x 309 -s AllBears.aln -n AllBearsTree -w /project/inbre-train/inbre001/molb4485/Manzanares_Phylo/AllBears -o Ailuropoda_melanoleuca_Giant_Panda

echo "RAxML has finished at $(date)"
