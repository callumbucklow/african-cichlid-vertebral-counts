
**African Cichlid Lake Radiations Recapitulate Riverine Axial Morphologies Through Repeated Exploration of Morphospace**

Associated image data, .rds objects (see below) and count and body shape data has been deposited on Zenodo and can be accessed here: https://doi.org/10.5281/zenodo.15593255 

The code and data associated with the phylogenetic comparative methods utilised in 'African Cichlid Lake Radiations Recapitulate Riverine Axial Morphologies Through Repeated Exploration of Morphospace' is deposited here:

-------- Phylogenetic Comparative Methods -------

The code for the majority of the analysis is avaliable as a self-contained R project entitled "Macroevolution Code" and should run seamlessly once downloaded into any directory (provided directory structure is maintained). However, some minor tweaking will likely need to be done to run this analysis on a PC (i.e. correction of file paths which are currently Mac/Linux formatted).

Much of the data is saved as .rds files to avoid having to re-do time-consuming analysis, such as the discete trait modelling and multiple-OU model fits. The phylogeny is very large and will take at least two days per regime if being run on a local machine. RDS objects for this code have been deposited onto Zenodo and can be accessed here: https://doi.org/10.5281/zenodo.15593255. Once downloaded, the .rds objects can be unzipped and placed directly into the 'Data' folder within the directory.  

Some of the analysis, such as calcualtion of group differences (e.g. phylogenetic MANOVA, calculation of Euclidean and Gower distances is contained with the 'Figures for Macroevolution Paper.rmd' file as they appeared important as figures were being constructed. 

-------- Ancestral Trait Reconstruction -------

The code for the ancestral trait reconstruction (i.e. the ancestral reconstruction of some of the univariate traits examined in the paper), we used _fitContinuousMCMC_ in the R package _Geiger_ (Harmon et al., 2014). Within the folder 'Ancestral Trait Reconstruction' you will find the code necessary to reconstruct the univariate traits that is parallelised and can be modified to estimate multiple traits at the same time (the number of cores matches the number of datasets input). 

You will also find .txt files for all the node and parameter estimates for all traits and all runs. Data is arranged in folders according to the trait. For reproducibility, seed values are indicated. 

**Somitic Change Drives Changes in Vertebral Regionalisation in African Cichlids Despite Strong Canalisation of Somite Number**

The code and data associated with the phylogenetic comparative methods utilised in 'Somitic Change Drives Changes in Vertebral Regionalisation in African Cichlids Despite Strong Canalisation of Somite Number' is deposited here:

Data for this project was initially published in African Cichlid Lake Radiations Recapitulate Riverine Axial Morphologies Through Repeated Exploration of Morphospace and image, count and shape data can be downloaded via Zenodo: https://doi.org/10.5281/zenodo.15593255

Code for this manuscript is contained within the 'Somitogenesis and Regionalisation' directory. Code is self-contained within an R project. Simply download the whole directory and the code will run (it is provided as a markdown document so can be ran in chunks). File paths will need to be adjusted for PC users. 
