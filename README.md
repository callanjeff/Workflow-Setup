# Workflow-Setup

A reusable bash script to create a standardized project directory structure for bioinformatics workflows. Ideal for TCGA multi-omics studies, including RNA-seq, methylation, CNV, and proteomics. Originally designed for a biomarker discovery project using PRRG2 in cervical cancer (TCGA-CESC), this structure promotes clean organization and reproducibility.

## Directory Structure Created

```
TCGA_CESC_PRRG2_Project/
├── data/
│   ├── raw/           # Raw downloaded data
│   ├── processed/     # Cleaned or normalized data
│   └── metadata/      # Sample metadata and survival files
├── scripts/
│   ├── R/             # R scripts for analysis
│   ├── python/        # Optional Python tools
│   └── bash/          # Shell scripts for automation
├── results/
│   ├── figures/       # All plots and charts
│   ├── tables/        # DEG and enrichment tables
│   └── exports/       # Output datasets for reporting
├── reports/
│   ├── draft_text/    # Report drafts
│   └── final_pdf/     # Final write-up
├── references/        # PDFs and papers
└── README.md          # Project overview
```

## How to Run

1. Clone the repository:

```bash
git clone https://github.com/yourusername/Workflow-Setup.git
cd Workflow-Setup
```

2. Make the script executable:

```bash
chmod +x setup_tcga_cesc_project.sh
```

3. Run the setup script:

```bash
./setup_tcga_cesc_project.sh
```

This will create the following directory:

```bash
~/Bioinformatics/TCGA_CESC_PRRG2_Project/
```

## Requirements

- Unix-based OS (Linux/macOS)
- Bash shell
- Permissions to write to `~/Bioinformatics/`

## Extend This Script

You can modify the script to:
- Auto-download TCGA data
- Initialize a Git repository
- Add a `.gitignore` or conda environment file
