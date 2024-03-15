# Set seed for reproducibility
set.seed(1212)

# Assuming your dataset is named 'star_classificationpre'

# Define the percentage of variables you want to introduce NA values for
percentage_variables_na <- runif(1, min = 0.2, max = 0.5)  # Adjust as needed

# Determine the number of variables to introduce NA values for
num_variables_na <- round(ncol(star_classificationpre) * percentage_variables_na)

# Randomly select the variables to introduce NA values for
variables_to_fill <- sample(colnames(star_classificationpre), num_variables_na, replace = FALSE)

# Introduce NA values in the selected variables
for (variable_name in variables_to_fill) {
  # Determine the number of rows in the dataset
  num_rows <- nrow(star_classificationpre)
  
  # Define the percentage of NA values you want to introduce for the current variable
  percentage_na <- runif(1, min = 0.07, max = 0.10)  # Adjust as needed
  
  # Determine the number of NA values to introduce for the current variable
  num_na <- round(num_rows * percentage_na)
  
  # Randomly select row indices
  rows_to_fill <- sample(1:num_rows, num_na, replace = FALSE)
  
  # Introduce NA values for the current variable
  star_classificationpre[rows_to_fill, variable_name] <- NA
}
