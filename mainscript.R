# Loads the foreign package for reading data from other software formats
library(foreign)

# Loads the readxl package for reading Excel files
library(readxl)

# Loads the MLDataR package for loading and manipulating machine learning datasets
library(MLDataR)

# Loads the cvms package for cross-validation and model selection
library(cvms)

# Loads the tibble package for creating data frames
library(tibble)

# Loads the farff package for reading and writing ARFF files used by Weka
library(farff)

# Loads the dplyr package for data manipulation and cleaning
library(dplyr)

# Loads the xgboost package for building and tuning gradient boosting models
library(xgboost)

# Loads the ggplot2 package for data visualization
library(ggplot2)

# Loads the SHAPforxgboost package for computing SHAP values for XGBoost models
library(SHAPforxgboost)

# Loads the pROC package for computing ROC curves and other metrics for classification models
library(pROC)

# Loads the rms package for regression modeling and validation
library(rms)

# Loads the lspline package for creating restricted cubic splines
library(lspline)

# Loads the caret package for machine learning model training and evaluation
library(caret)

# is a package for importing and exporting data between R and other statistical software programs such as SAS, Stata and SPSS. It provides the functions read_sas(), 
library(haven)

# dplyr is a package for data manipulation and transformation. It provides a set of functions for data manipulation such as filtering, selecting, arranging, summarizing, and joining data frames.
library(dplyr)

# Read the lab data
lab <- read_xpt("lab.xpt")

# Read the lifestyle data
lifestyle <- read_xpt("lifestyle.xpt")

# Combine the lab and lifestyle data frames
lab_lifestyle <- left_join(lab, lifestyle, by = "SEQN")

# Combine the demographic and nutritional risk factors data frames
demographic_nutritional_risk_factors <- left_join(demographic, nutritional_risk_factors, by = "SEQN")

# Combine the two data frames created above
nhanes_data <- left_join(lab_lifestyle, demographic_nutritional_risk_factors, by = "SEQN")

# Read the demographic data
demographic <- read_xpt("demographic.xpt")

# Read the nutritional risk factors data
nutritional_risk_factors <- read_xpt("nutritional_risk_factors.xpt")

# Load the full_labs_nhanes Excel file into the R environment and assign it to a variable called full_labs_nhanes
full_labs_nhanes <- read_excel("full_labs_nhanes.xlsx")

# Load the disease_body_measures Excel file into the R environment and assign it to a variable called disease_body_measures
disease_body_measures <- read_excel("nhanes_disease_body_measures_smoking.xlsx")

# Load the NHANES_Behavior_Depression CSV file into the R environment and assign it to a variable called covariates
covariates <- read_csv("NHANES_Behavior_Depression.csv")

# Merge the full_labs_nhanes, disease_body_measures, and covariates data frames by SEQN (the unique identifier for each participant)
full_df <- merge(full_labs_nhanes, disease_body_measures, by = "SEQN")
full_df <- merge(full_df, covariates, by = "SEQN")

#Create a new variable in the full_df data frame that represents whether or not the participant reported having CAD
full_df$CAD <- as.numeric(full_df$Told_Doctor_CAD_1_yes == 1)

# Get the names of all the columns in the full_df data frame
full_names <- names(full_df)
