#!/bin/bash
#SBATCH -J Marmoset_RPCA_LME
#SBATCH -n 16
#SBATCH -t 1-00:00:00
#SBATCH --mem=20g 
#SBATCH --mail-user=callaband@ucsd.edu
#SBATCH --mail-type=all
#SBATCH --export=all
#SBATCH -o /home/callaban/Output_Files/slurm-%x-%N-%j.out 
#SBATCH -e /home/callaban/Error_Files/slurm-%x-%N-%j.err

source ~/.profile

conda activate /home/callaban/miniconda3/envs/qiime2-2023.2

cd /home/callaban/Projects/Marmosets

qiime longitudinal linear-mixed-effects --i-table rarefied_relative_frequency_table.qza --m-metadata-file merged_4genera_lr.tsv --p-state-column timepoint_number --p-individual-id-column host_subject_id --p-group-columns collection_timepoint,source --p-random-effects plate_id,taxon_id --p-metric Current_Natural_Log_Ratio --o-visualization fourgenera_lr_LME_plot.qzv --verbose
