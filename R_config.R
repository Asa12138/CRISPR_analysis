devtools::load_all("~/Documents/R/iCRISPR/")
devtools::load_all("~/Documents/R/pcutils/")

Packages <- c("dplyr", "reshape2","ggsci","ggpubr","RColorBrewer","cowplot","patchwork","readr","tibble","vegan","ggrepel")
lib_ps(Packages)
kin_col=c(k__Bacteria="#a6bce3",k__Fungi="#fdbf6f",k__Metazoa="#fb9a99",k__Viridiplantae="#a9d483",
          k__Archaea="#1f78b4",k__Eukaryota_others="#8dd3c7",k__Viruses="#bda7c9")
crispr_target_domain=c("Archaea"="#E9967A","Viruses"="#483D8B","Bacteria"="#698B69","Fungi"="#CD9B1D","Protozoa"="#B2DFEE","Eukaryota"="#fb9a99")

add_theme()