#!/bin/bash

#SBATCH -p q1 # Nombre de la particion
#SBATCH -J TESTCC # Nombre del trabajo
#SBATCH -n 1 # Numero de nucleos
#SBATCH -o stdout/salida_%j.txt
#SBATCH -e stdout/error_%j.txt

conda activate crowd_counting_freq

python test.py SHTCA Model/model_pretrain/CVPR_2022_ChfL/shtca.pth
