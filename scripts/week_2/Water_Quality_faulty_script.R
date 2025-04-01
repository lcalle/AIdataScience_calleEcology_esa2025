# Faulty AI-Generated Script for Water Quality Monitoring Dataset
# This script contains AI-generated mistakes that need debugging

process_water_quality_data <- function(file_path) {
  #AI-generated function to clean and analyze Water Quality data.
  #Errors are intentionally present for debugging.
  tryCatch({
    # Load dataset
    df <- read.csv(file_path, stringsAsFactors = FALSE)
    
    # Convert Date column to Date format (AI might forget proper handling)
    df$Date <- as.Date(df$Date)
    
    # Remove rows with missing values (Potential issue: Could remove useful data unnecessarily)
    df <- na.omit(df)
    
    # Incorrectly normalizing pH values (AI might apply an unnecessary transformation)
    df$pH <- df$pH / max(df$pH)
    
    # Inefficient loop for classifying water turbidity levels instead of vectorized operation
    df$Turbidity_Category <- ""
    for (i in 1:nrow(df)) {
      if (df$Turbidity_NTU[i] < 1) {
        df$Turbidity_Category[i] <- "Clear"
      } else if (df$Turbidity_NTU[i] < 3) {
        df$Turbidity_Category[i] <- "Moderate"
      } else {
        df$Turbidity_Category[i] <- "Turbid"
      }
    }
    
    # Incorrectly attempting to save the cleaned data (AI may forget row.names = FALSE)
    write.csv(df, "Water_Quality_Dataset_example.csv")
    
    return(df)
    
  }, error = function(e) {
    print(paste("Error processing Water Quality data:", e))
    return(NULL)
  })
}

# Example usage
file_path <- "Water_Quality_Dataset_example.csv"
processed_data <- process_water_quality_data(file_path)
