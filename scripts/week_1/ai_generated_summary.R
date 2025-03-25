# AI-Generated R Script for Descriptive Statistics & Data Cleaning
# This script was generated using an effective prompt

summarize_and_clean_data <- function(file_path) {
  #Loads a dataset, displays summary statistics, handles missing values, and saves a cleaned version.
  tryCatch({
    # Load dataset
    df <- read.csv(file_path, stringsAsFactors = FALSE)
    
    # Display summary statistics
    print("Summary Statistics:")
    print(summary(df))
    
    # Check for missing values
    print("\nMissing Values:")
    print(colSums(is.na(df)))
    
    # Handling missing values (filling with column mean)
    df[is.na(df)] <- lapply(df, function(x) ifelse(is.numeric(x), mean(x, na.rm = TRUE), x))
    
    # Save cleaned dataset
    cleaned_file_path <- paste0("cleaned_", file_path)
    write.csv(df, cleaned_file_path, row.names = FALSE)
    print(paste("Cleaned dataset saved as", cleaned_file_path))
    
    return(df)
    
  }, error = function(e) {
    print(paste("Error processing the dataset:", e))
    return(NULL)
  })
}

# Example usage
file_path <- "Air_Quality_Dataset_example.csv"
processed_data <- summarize_and_clean_data(file_path)
