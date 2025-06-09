#!/bin/bash

# Base project path
project_root=~/Bioinformatics/TCGA_CESC_PRRG2_Project

# Define quick-access directory variables
export pyscripts=$project_root/scripts/python
export rscripts=$project_root/scripts/R
export bscripts=$project_root/scripts/bash

export rawdata=$project_root/data/raw
export processed=$project_root/data/processed
export metadata=$project_root/data/metadata

export figures=$project_root/results/figures
export tables=$project_root/results/tables
export exports=$project_root/results/exports

export reports_draft=$project_root/reports/draft_text
export reports_final=$project_root/reports/final_pdf

export references=$project_root/references
export rootdir=$project_root

# Echo confirmation
echo "🔧 Environment variables set for TCGA_CESC_PRRG2_Project."
echo "Try 'cd \$pyscripts' or 'cd \$rawdata'"

