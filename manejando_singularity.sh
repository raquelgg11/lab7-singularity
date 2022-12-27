#!/bin/bash
module load anaconda/2020.11
echo "Hostname en ibsen: "
echo
hostname 
echo
echo "Hostname en my-python.sif: "
echo
singularity/my-python.sif hostname
echo
echo "cat /etc/os-release en ibsen: "
echo
cat /etc/os-release 
echo "cat /etc/os-release en my-python.sif: "
echo
singularity/my-python.sif cat /etc/os-release 
echo
echo "ls-l en ibsen: "
echo
ls -l
echo "ls -l en my-python.sif: "
echo
singularity/my-python.sif ls -l
echo
echo "pwd en ibsen: "
echo
pwd
echo "pwd en my-python.sif: "
echo
singularity/my-python.sif pwd
echo
echo "Versión de Python en ibsen: "
echo
python --version
echo "Versión de Python en my-python.sif: "
echo
singularity/my-python.sif python --version
echo "Ejecutando el notebook kmer-solution.ipynb desde ibsen"
echo
ipython source/kmer-solution.ipynb
echo
echo "Ejecutando el notebook kmer-solution.ipynb desde my-python.sif"
echo
singularity/my-python.sif ipython /home/kmer-solution.ipynb

module unload anaconda/2020.11
