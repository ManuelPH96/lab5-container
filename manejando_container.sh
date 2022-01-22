#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno20/lab5-container
#SBATCH --cpus-per-task=1 # Set XX to 1 to run a sequential application. Set XX to 26 to reserve the full node.
#SBATCH --output=output_manejando_container.sh
#SBATCH -J Lab5_singularity
#SBATCH --mail-type=END #END/START/NONE
#SBATCH --mail-user=manuel.pinero1@um.es   # END/START/NONE

module add singularity/3.8.0

echo 'A) Versión del sistema operativo'

/nas/hdd-0/singularity_images/python_3-9-1.sif cat /etc/os-release

echo 'B) Contenido del directorio'

/nas/hdd-0/singularity_images/python_3-9-1.sif ls

echo 'C) Path del directorio que estamos viendo'

/nas/hdd-0/singularity_images/python_3-9-1.sif pwd 

echo 'D) La versión de Python instalada'

/nas/hdd-0/singularity_images/python_3-9-1.sif echo python --version

echo 'E) Versión compilador C++'

/nas/hdd-0/singularity_images/python_3-9-1.sif g++ --version

echo 'F) Ejecuta k-mer13 en C++'

time /nas/hdd-0/singularity_images/python_3-9-1.sif ./data/k-mer13

module unload singularity/3.8.0
