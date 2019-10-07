options("repos" = c(CRAN="https://mirrors.ustc.edu.cn/CRAN/"))
options(BioC_mirror="http://mirrors.ustc.edu.cn/bioc/")
install.packages(c("BiocManager", "devtools", "lazyeval", "labeling"))
install.packages(c('ggplot2','ggthemes','officer','rvg','scales','tidyverse','reshape2','tibble','gdtools','labeling','munsell','RColorBrewer','broom','dplyr','dbplyr','forcats','haven','hms','lubridate','modelr','readr','readxl','reprex','rvest','tidyr','plyr','colorspace','fansi','pillar','pkgconfig','utf8','vctrs','ellipsis','zeallot','systemfonts','generics','tidyselect','BH','plogr','DBI','cellranger','progress','rematch','rmarkdown','knitr','tinytex','xfun','highr','markdown','selectr'))
BiocManager::install(c('Biostrings', 'msa', 'S4Vectors', 'car', 'caret', 'cvAUC', 'DescTools', 'doParallel', 'doSNOW', 'extraTrees', 'foreach', 'fst', 'ggpubr', 'ggsci', 'matrixStats', 'mlr', 'Peptides', 'seqinr', 'stringdist', 'survminer', 'VennDiagram', 'pbapply', 'psych', 'randomForestSRC', 'igraph', 'rlecuyer'))
suppressWarnings(devtools::install_github("masato-ogishi/plotUtility"))
suppressWarnings(devtools::install_github("masato-ogishi/Repitope"))
