




setwd("/Volumes/research/home/jsandhu/UNL_Sorghum_NStress")
library(xlsx)
library(readxl)
library(writexl)
install.packages("xlsx", "tidyr", "plyr", "dplyr")


SbAt0=read.delim("Sbicolor_730_v5.1.annotation_info.txt")
ILmod0=read_xlsx("WithN0/UNL_N_stress_IL_WGCNA_module_members.xlsx")
Rtmod0=read_xlsx("WithN0/UNL_N_stress_Root_WGCNA_module_members.xlsx")
sbiIDs=read.delim("WithN0/Sbi.IDandKnumbers_01100.txt")
ILmod1=left_join(ILmod0, SbAt0, "Gene",multiple = "all") %>% left_join(sbiIDs, "KO",multiple = "all")
Rtmod1=left_join(Rtmod0, SbAt0, "Gene",multiple = "all") %>% left_join(sbiIDs, "KO",multiple = "all")


write_xlsx(list(ILmod1=ILmod1,Rtmod1=Rtmod1), "WithN0/UNL_N_stress_WGCNA_module_members_annotation2.xlsx")


