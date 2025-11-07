
# CRISPRome Project Overview

This project systematically analyzes microbial CRISPR-Cas systems, spacers, environmental diversity, and phylogenetic patterns at large scale using a modular pipeline built in R and bash scripting. It integrates genome screening, CRISPR array and Cas gene annotation, spacerome clustering, blast analysis against diverse databases, environmental comparisons, and evolutionary tree construction.

## Major Modules and Workflow

### 1. pre_CCF

- Screens millions of microbial genomes using CRISPRCasFinder to identify CRISPR arrays and Cas gene sequences.
- Quality controls and refines CRISPR arrays using iCRISPR tools, builds a reference database for downstream analysis.
- Performs basic statistics and annotation for spacers and Cas genes, consolidates all results.

### 1.1. Blast_and_pre

- Clusters spacers by cd-hit for redundancy removal, including analyses of spacer length, identity, and diversity between species and domains.
- Runs batch blastn for spacers against databases covering bacteria, archaea, viruses, plasmids, fungi, protozoa, etc.
- Maps blast hits to taxonomic lineage and assigns metadata for further association analysis (e.g., LCA).

### 1.2. Cas_tree

- Extracts and processes Cas gene families (Cas1/2/4/9/5/7) and 16S rRNA for phylogenetic analyses.
- Constructs sequence/protein-based phylogenetic trees, calculates evolutionary distances between Cas types and microbial domains, and visualizes relationships between major phyla.

### 2. Blast_res

- Integrates all blast results, structures the data for analyzing spacer relationships with source/target genomes and target gene annotation.
- Provides network/interaction statistics, coding/intergenic region annotation, spacerome redundancy, and phylogenetic distance distribution.

### 2.1. Self_target

- Detects self-targeting spacers and characterizes their distribution and enrichment in microbial genomes across evolutionary contexts.

### 2.2. function

- Performs gene functional enrichment on target regions hit by spacers, profiling gene function and genome region distribution.

### 2.3. Spacerome_network

- Builds spacerome interaction networks, visualizes connections between different sources and targets, identifies modules and biological significance.

### 2.4. Tri_target

- Triangulates target analysis for spacers, investigating how they coordinate effects on multiple genomes and associated functional networks.

### 3. Environmental

- Batches CRISPR identification and analysis for metagenomes from oral, gut, skin, glacier, soil, and marine environments.
- Summarizes CRISPR/Cas type and spacer diversity in different ecological contexts, provides comparative statistics and visualization across environments.

### 4. HGT

- Focuses on horizontal gene transfer (HGT) analysis, such as in representative species (e.g., Salmonella).
- Monitors CRISPR/Cas systems and spacers involved in HGT, visualizes evolutionary relationships, and analyzes interaction with genome structure.

### 5. CRISPR_SV

- Studies structural variation (SV) events associated with CRISPR systems, quantifies and visualizes SV-genome interactions.