% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spatial_variable_gene.R
\name{spatial_variable_genes}
\alias{spatial_variable_genes}
\title{Find spatial variable genes}
\usage{
spatial_variable_genes(
  spRNA.obj,
  spRNA.assay = "enhanced",
  scRNA.obj = NULL,
  scRNA.assay = "RNA",
  test.use = "wilcox",
  bin = 20,
  n.core = 1
)
}
\arguments{
\item{spRNA.obj}{spatial transcriptome seurat object}

\item{spRNA.assay}{spatial transcriptome assay}

\item{scRNA.obj}{scRNA-seq seurat object}

\item{scRNA.assay}{scRNA-seq seurat assay}

\item{test.use}{which test to use. Available options are:
"ks": Kolmogorov-Smirnov Tests
"wilcox": Wilcoxon Rank Sum and Signed Rank Tests}

\item{bin}{number of bins used to segregate the image}

\item{n.core}{number of CPU cores used}
}
\value{
return a matrix wtih spatial variable genes
}
\description{
Bin the images into small chunks. For each gene, detected the numbers of
expression cells in each chunk, comparing the distribution with random.
}
