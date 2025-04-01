# Faulty AI-Generated Script for Air Quality Index (AQI) Dataset
# This script contains AI-generated mistakes that need debugging

process_aqi_data <- function(file_path) {
  #AI-generated function to clean and analyze AQI data.
  #Errors are intentionally present for debugging.
  tryCatch({
    # Load dataset
    df <- read.csv(file_path, stringsAsFactors = FALSE)
    
    # Convert Date column to Date format (AI may forget proper handling)
    df$Date <- as.Date(df$Date)
    
    # Drop rows where any value is missing (Potential issue: Could be too aggressive)
    df <- na.omit(df)
    
    # Normalize air quality values incorrectly using standard deviation instead of min-max scaling
    df$PM2.5 <- (df$PM2.5 - mean(df$PM2.5)) / sd(df$PM2.5)
    df$PM10 <- (df$PM10 - mean(df$PM10)) / sd(df$PM10)
    
    # Inefficient loop for calculating AQI category (AI might use a slow for-loop instead of vectorized operations)
    df$AQI_Category <- sapply(df$PM2.5, function(value) {
      if (value < 12) {
        return("Good")
      } else if (value < 35) {
        return("Moderate")
      } else {
        return("Unhealthy")
      }
    })
    
    # Incorrectly attempting to save the cleaned data (AI may forget row.names = FALSE)
    write.csv(df, "cleaned_aqi_data.csv")
    
    return(df)
    
  }, error = function(e) {
    print(paste("Error processing AQI data:", e))
    return(NULL)
  })
}

# Example usage
file_path <- "data/Air_Quality_Dataset_example.csv"
processed_data <- process_aqi_data(file_path)

