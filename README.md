# Machine-Learning-to-Identify-Risk-Factors-for-Coronary-Artery-Disease

README:

The lab, lifestyle, demographic, and nutritional risk factors for CAD will be identified through the use of machine learning methods in this project. The NHANES dataset, which contains information about the health and lifestyle of people in the United States, is the dataset used in this project.

Packages like foreign, readxl, MLDataR, cvms, tibble, farff, dplyr, xgboost, ggplot2, SHAPforxgboost, pROC, rms, and lspline are utilized in the R code. Importing and modifying data, creating models, and displaying results all require these packages.

The code directory contains the main script, which goes by the name "1.R." The script uses linear regression models for feature selection and merges data from various Excel and CSV files. In the code directory, a CSV file with the name "sig_var.csv" contains the output of the feature selection process.

An XGBoost model that can predict the presence of sleep disorders is then constructed using the selected features. The code directory's "2.R" contains the XGBoost function. A number of metrics, including AUC, accuracy, precision, and recall, are used to evaluate the model. ROC curves, confusion matrices, and SHAP (SHapley Additive exPlanations) plots are used to show the results. The code for making SHAP plots is situated in "3.R" and the code for highlight significance is in "4.R".

The "data" directory is where the project's intermediate datasets are kept. The official NHANES website lets you download the dataset and other relevant files.

Note: A portion of the ways in the code are well defined for the creator's machine and may should be changed likewise.
