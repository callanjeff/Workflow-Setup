# Workflow-Setup

A reusable bash script to create a standardized project directory structure for bioinformatics workflows. Suitable for a wide range of TCGA and omics-based studies, including RNA-seq, DNA methylation, CNV, proteomics, and clinical metadata integration. This structure promotes clean organization, reproducibility, and scalability across diverse bioinformatics projects.

## Directory Structure Created

```
TCGA_XXXX_YYYY_Project/
├── data/
│   ├── raw/           # Raw downloaded data
│   ├── processed/     # Cleaned or normalized data
│   └── metadata/      # Sample metadata and survival files
├── scripts/
│   ├── R/             # R scripts for analysis
│   ├── python/        # Python scripts for data processing
│   └── bash/          # Shell scripts for automation
├── results/
│   ├── figures/       # All plots and charts
│   ├── tables/        # Processed results like correlation tables, enrichments
│   └── exports/       # Output datasets for reporting or downstream use
├── reports/
│   ├── draft_text/    # Report drafts (Markdown, notes)
│   └── final_pdf/     # Final write-up or submission
├── references/        # PDFs and citation sources
└── README.md          # Project overview
```

> Replace `XXXX` with the TCGA cohort name (e.g., `CESC`, `KIRC`) and `YYYY` with the gene, target, or variable of interest (e.g., `PRRG2`, `TP53`, `ImmuneScore`).

---

## How to Run

1. Clone the repository:

```bash
git clone https://github.com/yourusername/Workflow-Setup.git
cd Workflow-Setup
```

2. Make the setup script executable:

```bash
chmod +x setup_tcga_project.sh
```

3. Run the setup script:

```bash
./setup_tcga_project.sh
```

This will create the following project directory:

```
~/Bioinformatics/TCGA_XXXX_YYYY_Project/
```

---

## Requirements

- Unix-based OS (Linux/macOS)
- Bash shell
- Permissions to write to `~/Bioinformatics/`

---

## Extend This Script

You can modify the setup to:
- Auto-download TCGA or GEO datasets
- Initialize a Git repository
- Add `.gitignore`, `environment.yml`, or Docker support
- Preconfigure analysis templates or RMarkdown scaffolding

---

## Environment Shortcuts (Optional)

To simplify navigation across the project’s directory tree, you can source the `set_tcga_env.sh` script to define commonly used environment variables.

### How to Set Up

```bash
source scripts/bash/set_tcga_env.sh XXXX
```

### Example Navigation

```bash
cd $pyscripts        # Python analysis scripts
cd $rawdata          # Raw data directory
cd $figures          # Generated plots and visualizations
cd $reports_final    # Final report location
```

---

## Directory Shortcuts Available

| Variable         | Points To                                            |
|------------------|------------------------------------------------------|
| `$project_root`  | `~/Bioinformatics/TCGA_XXXX_YYYY_Project/`          |
| `$rawdata`       | `.../data/raw/`                                      |
| `$processed`     | `.../data/processed/`                                |
| `$metadata`      | `.../data/metadata/`                                 |
| `$rscripts`      | `.../scripts/R/`                                     |
| `$pyscripts`     | `.../scripts/python/`                                |
| `$bscripts`      | `.../scripts/bash/`                                  |
| `$figures`       | `.../results/figures/`                               |
| `$tables`        | `.../results/tables/`                                |
| `$exports`       | `.../results/exports/`                               |
| `$reports_draft` | `.../reports/draft_text/`                            |
| `$reports_final` | `.../reports/final_pdf/`                             |
| `$references`    | `.../references/`                                    |

This setup supports reproducible, modular, and multi-omics bioinformatics workflows — adaptable to many use cases beyond cancer research.
