\name{HACHypothetical}
\alias{HACHypothetical}

\title{Set up an object to simulate haplotype accumulation for a hypothetical species}

\description{Helper function which creates an object containing necessary information to run a simulation of haplotype accumulation for a hypothetical species of interest}

\usage{HACHypothetical(N, Hstar, probs, ...)}

\arguments{\item{N}{Number of individuals}
\item{Hstar}{Number of unique species' haplotypes}
\item{probs}{Haplotype frequency distribution vector}
\item{p}{Proportion of haplotypes to recover}
\item{perms}{Number of permutations (replications)}
\item{subsample}{Is a subsample of haplotype labels desired (TRUE/FALSE)?}
\item{prop}{If subsample = TRUE, the proportion of haplotype labels to subsample}
\item{conf.level}{Desired confidence level for gaphical output and interval estimation}
\item{filename}{Name of file where simulation results are to be saved}
}

\note{N must be greater than 1 and greater than or equal to Hstar. Hstar must be greater than 1. probs must have a length equal to Hstar and its elements must sum to 1.}
}

\examples{
  ## Simulate hypothetical species ##
  
  N <- 100 # total number of sampled individuals
  Hstar <- 10 # total number of haplotypes
  probs <- rep(1/Hstar, Hstar) # equal haplotype frequency distribution
  
  HACSObj <- HACHypothetical(N, Hstar, probs, filename = "output") # outputs a CSV file called "output.csv"
  
  ## Simulate hypothetical species - subsampling ##
  HACSObj <- HACHypothetical(N = N, Hstar = Hstar, probs = probs, perms = 1000, p = 0.95, subsample = TRUE, prop = 0.25, conf.level = 0.95, filename = "output")
  
  ## Simulate hypothetical species and all paramaters changed - subsampling ##
  HACSObj <- HACHypothetical(N = N, Hstar = Hstar, probs = probs, perms = 10000, p = 0.90, subsample = TRUE, prop = 0.15, conf.level = 0.95, filename = "output")
  }
  