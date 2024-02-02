library(data.table)
single_cell<-fread(input = "C:/Users/ritas/Desktop/TESE_IMM/SC_LUNG/SC_LUNG/signature_matrix_processed.txt")
View(single_cell)

############################################################################
#1ºADIPOCYTES:
##################################################################################
desired_value <- 'Adipocytes'

# Use grep to find columns containing the desired value in their names
matching_columns_Adipocytes<- grep(desired_value, colnames(single_cell), value = TRUE)

# Set the percentage you want to keep (e.g., 10%)
percentage_to_keep <- 0.1

# Randomly sample the specified percentage of matching columns
set.seed(123)  # Set seed for reproducibility
num_columns_to_keep_Adipocytes<- round(percentage_to_keep * length(matching_columns_Adipocytes))
sampled_columns_Adipocytes<- sample(matching_columns_Adipocytes, size = num_columns_to_keep_Adipocytes)

# Create a new dataframe with the first column and the sampled columns
Adipocytes_dataframe <- single_cell[, ..sampled_columns_Adipocytes]
total_columns <- c("Adipocytes", rep("Adipocytes", length(sampled_columns) - 1))
setnames(Adipocytes_dataframe, total_columns)

# View the new dataframe
View(Adipocytes_dataframe)

############################################################################
#2ºB Cells:
##################################################################################
desired_value <- 'B'

# Use grep to find columns containing the desired value in their names
matching_columns_B<- grep(desired_value, colnames(single_cell), value = TRUE)

# Set the percentage you want to keep (e.g., 10%)
percentage_to_keep <- 0.1

# Randomly sample the specified percentage of matching columns
set.seed(123)  # Set seed for reproducibility
num_columns_to_keep_B<- round(percentage_to_keep * length(matching_columns_B))
sampled_columns_B<- sample(matching_columns_B, size = num_columns_to_keep_B)

# Create a new dataframe with the first column and the sampled columns
new_dataframe_B<- single_cell[, ..sampled_columns_B]

total_columns <- c("B", rep("B", length(sampled_columns_B)))
setnames(new_dataframe_B, total_columns)

# View the new dataframe
View(new_dataframe_B)

############################################################################
#3ºCD4 Cells:
##################################################################################
desired_value <- 'CD4'

# Use grep to find columns containing the desired value in their names
matching_columns_CD4<- grep(desired_value, colnames(single_cell), value = TRUE)

# Set the percentage you want to keep (e.g., 10%)
percentage_to_keep <- 0.1

# Randomly sample the specified percentage of matching columns
set.seed(123)  # Set seed for reproducibility
num_columns_to_keep_CD4<- round(percentage_to_keep * length(matching_columns_CD4))
sampled_columns_CD4<- sample(matching_columns_CD4, size = num_columns_to_keep_CD4)

# Create a new dataframe with the first column and the sampled columns
new_dataframe_CD4<- single_cell[, ..sampled_columns_CD4]

total_columns <- c("CD4", rep("CD4", length(sampled_columns_CD4)-1))
setnames(new_dataframe_CD4, total_columns)

# View the new dataframe
View(new_dataframe_CD4)

############################################################################
#4ºCD8 Cells:
##################################################################################
desired_value <- 'CD8'

# Use grep to find columns containing the desired value in their names
matching_columns_CD8<- grep(desired_value, colnames(single_cell), value = TRUE)

# Set the percentage you want to keep (e.g., 10%)
percentage_to_keep <- 0.1

# Randomly sample the specified percentage of matching columns
set.seed(123)  # Set seed for reproducibility
num_columns_to_keep_CD8<- round(percentage_to_keep * length(matching_columns_CD8))
sampled_columns_CD8<- sample(matching_columns_CD8, size = num_columns_to_keep_CD8)

# Create a new dataframe with the first column and the sampled columns
new_dataframe_CD8<- single_cell[, ..sampled_columns_CD8]

total_columns <- c("CD8", rep("CD8", length(sampled_columns_CD8)-1))
setnames(new_dataframe_CD8, total_columns)

# View the new dataframe
View(new_dataframe_CD8)

############################################################################
#5ºDC Cells:
##################################################################################
desired_value <- 'DC'

# Use grep to find columns containing the desired value in their names
matching_columns_DC<- grep(desired_value, colnames(single_cell), value = TRUE)

# Set the percentage you want to keep (e.g., 10%)
percentage_to_keep <- 0.1

# Randomly sample the specified percentage of matching columns
set.seed(123)  # Set seed for reproducibility
num_columns_to_keep_DC<- round(percentage_to_keep * length(matching_columns_DC))
sampled_columns_DC<- sample(matching_columns_DC, size = num_columns_to_keep_DC)

# Create a new dataframe with the first column and the sampled columns
new_dataframe_DC<- single_cell[, ..sampled_columns_DC]

total_columns <- c("DC", rep("DC", length(sampled_columns_DC)-1))
setnames(new_dataframe_DC, total_columns)

# View the new dataframe
View(new_dataframe_DC)

############################################################################
#6ºEndothelial Cells:
##################################################################################
desired_value <- 'Endothelial'

# Use grep to find columns containing the desired value in their names
matching_columns_Endothelial<- grep(desired_value, colnames(single_cell), value = TRUE)

# Set the percentage you want to keep (e.g., 10%)
percentage_to_keep <- 0.1

# Randomly sample the specified percentage of matching columns
set.seed(123)  # Set seed for reproducibility
num_columns_to_keep_Endothelial<- round(percentage_to_keep * length(matching_columns_Endothelial))
sampled_columns_Endothelial<- sample(matching_columns_Endothelial, size = num_columns_to_keep_Endothelial)

# Create a new dataframe with the first column and the sampled columns
new_dataframe_Endothelial<- single_cell[, ..sampled_columns_Endothelial]

total_columns <- c("Endothelial", rep("Endothelial", length(sampled_columns_Endothelial)-1))
setnames(new_dataframe_Endothelial, total_columns)

# View the new dataframe
View(new_dataframe_Endothelial)

############################################################################
#7ºErythrocytes Cells:
##################################################################################
desired_value <- 'Erythrocytes'

# Use grep to find columns containing the desired value in their names
matching_columns_Erythrocytes<- grep(desired_value, colnames(single_cell), value = TRUE)

# Set the percentage you want to keep (e.g., 10%)
percentage_to_keep <- 0.1

# Randomly sample the specified percentage of matching columns
set.seed(123)  # Set seed for reproducibility
num_columns_to_keep_Erythrocytes<- round(percentage_to_keep * length(matching_columns_Erythrocytes))
sampled_columns_Erythrocytes<- sample(matching_columns_Erythrocytes, size = num_columns_to_keep_Erythrocytes)

# Create a new dataframe with the first column and the sampled columns
new_dataframe_Erythrocytes<- single_cell[, ..sampled_columns_Erythrocytes]

total_columns <- c("Erythrocytes", rep("Erythrocytes", length(sampled_columns_Erythrocytes)-1))
setnames(new_dataframe_Erythrocytes, total_columns)

# View the new dataframe
View(new_dataframe_Erythrocytes)

############################################################################
#8ºFibroblasts Cells:
##################################################################################
desired_value <- 'Fibroblasts'

# Use grep to find columns containing the desired value in their names
matching_columns_Fibroblasts<- grep(desired_value, colnames(single_cell), value = TRUE)

# Set the percentage you want to keep (e.g., 10%)
percentage_to_keep <- 0.1

# Randomly sample the specified percentage of matching columns
set.seed(123)  # Set seed for reproducibility
num_columns_to_keep_Fibroblasts<- round(percentage_to_keep * length(matching_columns_Fibroblasts))
sampled_columns_Fibroblasts<- sample(matching_columns_Fibroblasts, size = num_columns_to_keep_Fibroblasts)

# Create a new dataframe with the first column and the sampled columns
new_dataframe_Fibroblasts<- single_cell[, ..sampled_columns_Fibroblasts]

total_columns <- c("Fibroblasts", rep("Fibroblasts", length(sampled_columns_Fibroblasts)-1))
setnames(new_dataframe_Fibroblasts, total_columns)

# View the new dataframe
View(new_dataframe_Fibroblasts)

############################################################################
#9ºHSC Cells:
##################################################################################
desired_value <- 'HSC'

# Use grep to find columns containing the desired value in their names
matching_columns_HSC<- grep(desired_value, colnames(single_cell), value = TRUE)

# Set the percentage you want to keep (e.g., 10%)
percentage_to_keep <- 0.1

# Randomly sample the specified percentage of matching columns
set.seed(123)  # Set seed for reproducibility
num_columns_to_keep_HSC<- round(percentage_to_keep * length(matching_columns_HSC))
sampled_columns_HSC<- sample(matching_columns_HSC, size = num_columns_to_keep_HSC)

# Create a new dataframe with the first column and the sampled columns
new_dataframe_HSC<- single_cell[, ..sampled_columns_HSC]

total_columns <- c("HSC", rep("HSC", length(sampled_columns_HSC)-1))
setnames(new_dataframe_HSC, total_columns)

# View the new dataframe
View(new_dataframe_HSC)

############################################################################
#10ºKeratinocytes Cells:
##################################################################################
desired_value <- 'Keratinocytes'

# Use grep to find columns containing the desired value in their names
matching_columns_Keratinocytes<- grep(desired_value, colnames(single_cell), value = TRUE)

# Set the percentage you want to keep (e.g., 10%)
percentage_to_keep <- 0.1

# Randomly sample the specified percentage of matching columns
set.seed(123)  # Set seed for reproducibility
num_columns_to_keep_Keratinocytes<- round(percentage_to_keep * length(matching_columns_Keratinocytes))
sampled_columns_Keratinocytes<- sample(matching_columns_Keratinocytes, size = num_columns_to_keep_Keratinocytes)

# Create a new dataframe with the first column and the sampled columns
new_dataframe_Keratinocytes<- single_cell[, ..sampled_columns_Keratinocytes]

total_columns <- c("Keratinocytes", rep("Keratinocytes", length(sampled_columns_Keratinocytes)-1))
setnames(new_dataframe_Keratinocytes, total_columns)

# View the new dataframe
View(new_dataframe_Keratinocytes)

############################################################################
#12ºMacrophages Cells:
##################################################################################
desired_value <- 'Macrophages'

# Use grep to find columns containing the desired value in their names
matching_columns_Macrophages<- grep(desired_value, colnames(single_cell), value = TRUE)

# Set the percentage you want to keep (e.g., 10%)
percentage_to_keep <- 0.1

# Randomly sample the specified percentage of matching columns
set.seed(123)  # Set seed for reproducibility
num_columns_to_keep_Macrophages<- round(percentage_to_keep * length(matching_columns_Macrophages))
sampled_columns_Macrophages<- sample(matching_columns_Macrophages, size = num_columns_to_keep_Macrophages)

# Create a new dataframe with the first column and the sampled columns
new_dataframe_Macrophages<- single_cell[, ..sampled_columns_Macrophages]

total_columns <- c("Macrophages", rep("Macrophages", length(sampled_columns_Macrophages)-1))
setnames(new_dataframe_Macrophages, total_columns)

# View the new dataframe
View(new_dataframe_Macrophages)

############################################################################
#13ºMesangial Cells:
##################################################################################
desired_value <- 'Mesangial'

# Use grep to find columns containing the desired value in their names
matching_columns_Mesangial<- grep(desired_value, colnames(single_cell), value = TRUE)

# Set the percentage you want to keep (e.g., 10%)
percentage_to_keep <- 0.1

# Randomly sample the specified percentage of matching columns
set.seed(123)  # Set seed for reproducibility
num_columns_to_keep_Mesangial<- round(percentage_to_keep * length(matching_columns_Mesangial))
sampled_columns_Mesangial<- sample(matching_columns_Mesangial, size = num_columns_to_keep_Mesangial)

# Create a new dataframe with the first column and the sampled columns
new_dataframe_Mesangial<- single_cell[, ..sampled_columns_Mesangial]

total_columns <- c("Mesangial", rep("Mesangial", length(sampled_columns_Mesangial)-1))
setnames(new_dataframe_Mesangial, total_columns)

# View the new dataframe
View(new_dataframe_Mesangial)

############################################################################
#14ºMonocytes Cells:
##################################################################################
desired_value <- 'Monocytes'

# Use grep to find columns containing the desired value in their names
matching_columns_Monocytes<- grep(desired_value, colnames(single_cell), value = TRUE)

# Set the percentage you want to keep (e.g., 10%)
percentage_to_keep <- 0.1

# Randomly sample the specified percentage of matching columns
set.seed(123)  # Set seed for reproducibility
num_columns_to_keep_Monocytes<- round(percentage_to_keep * length(matching_columns_Monocytes))
sampled_columns_Monocytes<- sample(matching_columns_Monocytes, size = num_columns_to_keep_Monocytes)

# Create a new dataframe with the first column and the sampled columns
new_dataframe_Monocytes<- single_cell[, ..sampled_columns_Monocytes]

total_columns <- c("Monocytes", rep("Monocytes", length(sampled_columns_Monocytes)-1))
setnames(new_dataframe_Monocytes, total_columns)

# View the new dataframe
View(new_dataframe_Monocytes)

############################################################################
#15ºMyocytes Cells:
##################################################################################
desired_value <- 'Myocytes'

# Use grep to find columns containing the desired value in their names
matching_columns_Myocytes<- grep(desired_value, colnames(single_cell), value = TRUE)

# Set the percentage you want to keep (e.g., 10%)
percentage_to_keep <- 0.1

# Randomly sample the specified percentage of matching columns
set.seed(123)  # Set seed for reproducibility
num_columns_to_keep_Myocytes<- round(percentage_to_keep * length(matching_columns_Myocytes))
sampled_columns_Myocytes<- sample(matching_columns_Myocytes, size = num_columns_to_keep_Myocytes)

# Create a new dataframe with the first column and the sampled columns
new_dataframe_Myocytes<- single_cell[, ..sampled_columns_Myocytes]

total_columns <- c("Myocytes", rep("Myocytes", length(sampled_columns_Myocytes)-1))
setnames(new_dataframe_Myocytes, total_columns)

# View the new dataframe
View(new_dataframe_Myocytes)

############################################################################
#16ºNK Cells:
##################################################################################
desired_value <- 'NK'

# Use grep to find columns containing the desired value in their names
matching_columns_NK<- grep(desired_value, colnames(single_cell), value = TRUE)

# Set the percentage you want to keep (e.g., 10%)
percentage_to_keep <- 0.1

# Randomly sample the specified percentage of matching columns
set.seed(123)  # Set seed for reproducibility
num_columns_to_keep_NK<- round(percentage_to_keep * length(matching_columns_NK))
sampled_columns_NK<- sample(matching_columns_NK, size = num_columns_to_keep_NK)

# Create a new dataframe with the first column and the sampled columns
new_dataframe_NK<- single_cell[, ..sampled_columns_NK]

total_columns <- c("NK", rep("NK", length(sampled_columns_NK)-1))
setnames(new_dataframe_NK, total_columns)

# View the new dataframe
View(new_dataframe_NK)

############################################################################
#17ºSkeletal Cells:
##################################################################################
desired_value <- 'Skeletal'

# Use grep to find columns containing the desired value in their names
matching_columns_Skeletal<- grep(desired_value, colnames(single_cell), value = TRUE)

# Set the percentage you want to keep (e.g., 10%)
percentage_to_keep <- 0.1

# Randomly sample the specified percentage of matching columns
set.seed(123)  # Set seed for reproducibility
num_columns_to_keep_Skeletal<- round(percentage_to_keep * length(matching_columns_Skeletal))
sampled_columns_Skeletal<- sample(matching_columns_Skeletal, size = num_columns_to_keep_Skeletal)

# Create a new dataframe with the first column and the sampled columns
new_dataframe_Skeletal<- single_cell[, ..sampled_columns_Skeletal]

total_columns <- c("Skeletal", rep("Skeletal", length(sampled_columns_Skeletal)-1))
setnames(new_dataframe_Skeletal, total_columns)

# View the new dataframe
View(new_dataframe_Skeletal)

############################################################################
#18ºEpithelia Cells:
##################################################################################
desired_value <- 'Epithelial'

# Use grep to find columns containing the desired value in their names
matching_columns_Epithelial<- grep(desired_value, colnames(single_cell), value = TRUE)

# Set the percentage you want to keep (e.g., 10%)
percentage_to_keep <- 0.1

# Randomly sample the specified percentage of matching columns
set.seed(123)  # Set seed for reproducibility
num_columns_to_keep_Epithelial<- round(percentage_to_keep * length(matching_columns_Epithelial))
sampled_columns_Epithelial<- sample(matching_columns_Epithelial, size = num_columns_to_keep_Epithelial)

# Create a new dataframe with the first column and the sampled columns
new_dataframe_Epithelial<- single_cell[, ..sampled_columns_Epithelial]

total_columns <- c("Epithelial", rep("Epithelial", length(sampled_columns_Epithelial)-1))
setnames(new_dataframe_Epithelial, total_columns)

# View the new dataframe
View(new_dataframe_Epithelial)

#JOIN ALL THE 10% RANDOM CHOSEN BY EACH CELL TYPE:
full_annotation<-cbind(single_cell$GeneSymbol,Adipocytes_dataframe,new_dataframe_B,new_dataframe_CD4,new_dataframe_CD8,new_dataframe_DC,new_dataframe_Endothelial,new_dataframe_Epithelial,new_dataframe_Erythrocytes,new_dataframe_Fibroblasts,new_dataframe_HSC,new_dataframe_Keratinocytes,new_dataframe_Macrophages,new_dataframe_Mesangial,new_dataframe_Monocytes,new_dataframe_Myocytes,new_dataframe_NK,new_dataframe_Skeletal)
full_annotation<-as.data.frame(full_annotation)
View(full_annotation)

#Modify the name of column of the gene name from "V1" to "GeneSymbol"
# Assume 'your_data_table' is your data table
current_column_name <- "V1"
new_column_name <- "GeneSymbol"

# Change the column name
setnames(full_annotation, old = current_column_name, new = new_column_name)

# Save the first row as the new column names
full_annotation_1<-full_annotation
colnames(full_annotation_1) <- full_annotation_1[1, ]
full_annotation_1 <- full_annotation_1[-1, ]
View(full_annotation_1)

new_column_names <- as.character(full_annotation[1, ])

# Remove the first row to avoid duplication in data
your_data_frame <- full_annotation[-1, ]

# Set the new column names
colnames(your_data_frame) <- new_column_names

# View the updated data frame
View(new_column_names)

write.table(full_annotation,file = "C:/Users/ritas/Desktop/TESE_IMM/3_LUNG_SIGNATURE_MATRIX.txt",row.names = FALSE,quote = FALSE,sep = "\t",col.names =TRUE)



