#!/bin/bash

# Usage: ./init_tcga_project.sh CESC
# Example: ./init_tcga_project.sh KIRC

# Read cohort argument
COHORT="$1"

# Check for argument
if [ -z "$COHORT" ]; then
  echo "❌ Error: No cohort specified."
  echo "Usage: $0 <TCGA_COHORT>"
  exit 1
fi

# Define base directory using cohort name
BASE_DIR=~/Bioinformatics/TCGA_"${COHORT}"_PRRG2_Project

# Create project folder structure
mkdir -p "$BASE_DIR"/{data/{raw,processed,metadata},scripts/{R,python,bash},results/{figures,tables,exports},reports/{draft_text,final_pdf},references}

# Create a README file with cohort-specific header
echo "# TCGA ${COHORT} PRRG2 Biomarker Discovery Project" > "$BASE_DIR"/README.md
echo "Organized workflow for multi-omics biomarker discovery using TCGA-${COHORT} data." >> "$BASE_DIR"/README.md

# Completion message
echo "✅ Directory structure created at: $BASE_DIR"
