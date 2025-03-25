# AI-Generated R Script for Feature Engineering & Data Transformation
# This script was generated using an effective prompt

library(dplyr)

transform_air_quality_data <- function(file_path) {
  #Loads the air quality dataset, performs feature engineering, and saves the transformed dataset.
  tryCatch({
    # Load dataset
    df <- read.csv(file_path, stringsAsFactors = FALSE)
    
    # Categorizing PM2.5 levels
    df$PM2.5_Category <- cut(df$PM2.5,
                             breaks = c(-Inf, 12, 35, Inf),
                             labels = c("Good", "Moderate", "Unhealthy"))
    
    # Normalizing PM10 levels using Min-Max Scaling
    df$PM10 <- (df$PM10 - min(df$PM10, na.rm = TRUE)) / (max(df$PM10, na.rm = TRUE) - min(df$PM10, na.rm = TRUE))
    
    # Save transformed dataset
    transformed_file_path <- paste0("transformed_", file_path)
    write.csv(df, transformed_file_path, row.names = FALSE)
    print(paste("Transformed dataset saved as", transformed_file_path))
    
    return(df)
    
  }, error = function(e) {
    print(paste("Error processing the dataset:", e))
    return(NULL)
  })
}

# Example usage
file_path <- "Air_Quality_Dataset_example.csv"
processed_data <- transform_air_quality_data(file_path)
