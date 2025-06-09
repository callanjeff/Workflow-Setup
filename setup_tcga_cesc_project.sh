#!/bin/bash

# Define base directory
BASE_DIR=~/Bioinformatics/TCGA_CESC_PRRG2_Project

# Create the main structure
mkdir -p "$BASE_DIR"/{data/{raw,processed,metadata},scripts/{R,python,bash},results/{figures,tables,exports},reports/{draft_text,final_pdf},references}

# Create a placeholder README
echo "# TCGA CESC PRRG2 Biomarker Discovery Project" > "$BASE_DIR"/README.md
echo "Organized workflow for multi-omics biomarker discovery using TCGA-CESC." >> "$BASE_DIR"/README.md

echo "✅ Directory structure created at: $BASE_DIR"
