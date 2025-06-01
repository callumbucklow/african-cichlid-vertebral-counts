The code and data associated with the phylogenetic comparative methods utilised in 'African Cichlid Lake Radiations Recapitulate Riverine Axial Morphologies Through Repeated Exploration of Morphospace' is deposited here. 

-------- Phylogenetic Comparative Methods -------

The code for the majority of the analysis is avaliable as a self-contained R project entitled "Macroevolution Code" and should run seamlessly once downloaded into any directory. However, some minor tweaking will likely need to be done to run this analysis on a PC (i.e. correction of file paths which are currently Mac/Linux formatted).

Much of the data is saved as .rds files to avoid having to re-do time-consuming analysis, such as the discete trait modelling and multiple-OU model fits. The phylogeny is very large and will take at least two days per regime if being run on a local machine.

Some of the analysis, such as calcualtion of group differences (e.g. phylogenetic MANOVA, calculation of Euclidean and Gower distances is contained with the 'Figures for Macroevolution Paper.rmd' file as they appeared important as figures were being constructed. 

-------- Ancestral Trait Reconstruction -------

The code for the ancestral trait reconstruction (i.e. the ancestral reconstruction of some of the univariate traits examined in the paper), we used _fitContinuousMCMC_ in the R package _Geiger_ (Harmon et al., 2014). Within the folder 'Ancestral Trait Reconstruction' you will find the code necessary to reconstruct the univariate traits that is parallelised and can be modified to estimate multiple traits at the same time (the number of cores matches the number of datasets input). 

You will also find .txt files for all the node and parameter estimates for all traits and all runs. Data is arranged in folders according to the trait. For reproducibility, seed values are indicated. 



