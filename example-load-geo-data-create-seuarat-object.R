library(GEOquery)
library(Seurat)

g <- getGEO(GEO = "GSE183852")

p <- phenoData(g[[1]])

a <- fread("~/Downloads/GSE183852_Integrated_Counts.csv.gz",nrows=10)
am <- as.matrix(a[,2:269795])
rownames(am) <- a[,gene]

seu <- CreateSeuratObject(counts = am)
