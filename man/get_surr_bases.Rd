% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_descriptors.R
\name{get_surr_bases}
\alias{get_surr_bases}
\title{Retrieve surrounding base sequence of locus}
\usage{
get_surr_bases(fasta_filename, mutation_ids, k)
}
\arguments{
\item{fasta_filename}{character string naming the path to the reference genome FASTA file the sequencing data was aligned to.}

\item{mutation_ids}{character vector containing the ids of the loci to get the surrounding bases of. Id format is CHR:POS and can be obtained by calling the function \code{get_mut_id} on the vcf file containing those loci.}

\item{k}{integer with the number of bases to the right and to the left of the loci to get the genomic sequence from.}
}
\value{
Character vector with the genomic base sequence ranging from locus - \code{k} to locus + \code{k} for each locus in \code{mutation_ids}.
}
\description{
\code{get_surr_bases} retrieves the base sequence of the \[locus - \code{k}, locus + \code{k}\] region of each locus in \code{mutation_ids} from \code{fasta_filename}.
}
\details{
The sequence of the surrounding bases is retrieved from \code{fasta_filename} using samtools faidx tool. In the process, \code{get_surr_bases} creates a temporary file necessary for this tool to run.
}
