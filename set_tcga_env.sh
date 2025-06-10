#!/bin/bash

# Usage: source set_tcga_env.sh CESC
#        source set_tcga_env.sh KIRC

# Check for cohort argument
if [ -z "$1" ]; then
  echo "❌ Error: No cohort specified."
  echo "Usage: source set_tcga_env.sh <COHORT_NAME>"
  return 1
fi

# Normalize input (uppercase)
COHORT=$(echo "$1" | tr '[:lower:]' '[:upper:]')

# Base project path
export project_root=~/Bioinformatics/TCGA_${COHORT}_PRRG2_Project

# Define environment variables
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

# Confirmation
echo "✅ Environment set for TCGA_${COHORT}_PRRG2_Project"
echo "Example: cd \$pyscripts or \$figures"
