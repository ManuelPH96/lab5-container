#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno20
#SBATCH --cpus-per-task=1 # Set XX to 1 to run a sequential application. Set XX to 26 to reserve the full node.
#SBATCH --output=RESULTADOS.txt
#SBATCH -J Lab5_nativa
#SBATCH --mail-type=END #END/START/NONE
#SBATCH --mail-user=manuel.pinero1@um.es

echo 'Ficheros de C++'

echo  'k-mer13'

time ./k-mer13

echo 'k-mer14' 

time ./k-mer14

echo 'Ficheros de Python'

echo 'k-mer13'

time ./k-mer13.py

echo 'k-mer14'

time ./k-mer14.py
