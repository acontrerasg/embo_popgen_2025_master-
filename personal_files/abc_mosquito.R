library(abc)

path="/home/contreras/popgen_git/popgen_2025_forked/embo_popgen_2025_master-/personal_files/"

sim=read.csv(file = paste0(path,"mosquito-task2.csv"), header = TRUE)
obs=read.csv(file = paste0(path,"mosquito-observed.csv"), header = TRUE)

head(sim)

head(obs)

