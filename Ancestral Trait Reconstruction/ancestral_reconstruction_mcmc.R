#load dependent libraries
require(ape)
require(geiger)
require(doParallel)
require(foreach)

#set working directory to the folder where the script is located
setwd('C:\\Users\\User\\Desktop\\Model Trait Fit (Piscivory)')

#import the tree
all_species_tree <- ape::read.tree("all_species_tree_piscivore_pruned.txt")

#replace underscores with spaces in tip labels
all_species_tree$tip.label <- gsub("_", " ", all_species_tree$tip.label)

#import the data
all_species_count_data <- read.csv("all_species_matrix_data_piscivore.csv")

#convert data into matrices and set row names
rownames(all_species_count_data) <- all_species_count_data$X
all_species_count_data$X <- NULL
all_species_count_data <- as.matrix(all_species_count_data)

#define vectors for each variable
all_species_total_count <- all_species_count_data[,3]
all_species_ln_pc_ln_c <- all_species_count_data[,4]
all_species_ln_length_ln_width <- all_species_count_data[,5]

#check the names
geiger::name.check(all_species_tree, all_species_total_count)

#list of datasets to be fitted with names
data_list <- list(
  "ln_tc_5" = all_species_total_count,
  "ln_pc_ln_c_5" = all_species_ln_pc_ln_c,
  "ln_length_ln_width_5" = all_species_ln_length_ln_width)
#,
  #"ln_tc_4" = all_species_total_count,
  #"ln_pc_ln_c_4" = all_species_ln_pc_ln_c,
  #"ln_length_ln_width_4" = all_species_ln_length_ln_width)

#set seed values for each dataset
#seed_list <- c(1931, 1971, 1970, 1996, 2016)
seed_list <- c(2016, 2016, 2016)
#set up parallel processing
num_cores <- length(data_list) #number of cores matches the number of datasets to fit
cl <- makeCluster(num_cores)
registerDoParallel(cl)

#define the function to fit models
fit_models <- function(data, data_name, seed_value) {
  set.seed(seed_value)  #set the seed for reproducibility
  output_name <- paste0(data_name, "_mcmc_2e+6_BM_output_", seed_value)
  geiger::fitContinuousMCMC(all_species_tree, d = data, model = "BM", 
                            Ngens = 2e+6, sampleFreq = 500, printFreq = 500,
                            node.priors = NULL, root.prior = NULL,
                            acdc.prior = NULL, sample.node.states = TRUE,
                            outputName = output_name)
}

#loop over datasets and fit each model in parallel with a unique seed
foreach(i = 1:length(data_list), .packages = "geiger") %dopar% {
  data_name <- names(data_list)[i]
  data <- data_list[[i]]  
  seed_value <- seed_list[i]  
  fit_models(data, data_name, seed_value)  
}

#stop parallel processing
stopCluster(cl)
