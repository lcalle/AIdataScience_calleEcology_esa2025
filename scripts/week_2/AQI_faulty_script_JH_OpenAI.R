# Faulty AI-Generated Script for Air Quality Index (AQI) Dataset
# This script contains AI-generated mistakes that need debugging

process_aqi_data <- function(file_path) {
  tryCatch({
    # Load dataset
    df <- read.csv(file_path, stringsAsFactors = FALSE)
    
    # Properly convert Date column
    df$Date <- as.Date(df$Date, format="%Y-%m-%d")
    
    # Drop rows with missing crucial AQI values only
    df <- df[complete.cases(df[c("PM2.5", "PM10")]), ]
    
    # Min-max normalization of air quality values
    df$PM2.5 <- (df$PM2.5 - min(df$PM2.5)) / (max(df$PM2.5) - min(df$PM2.5))
    df$PM10 <- (df$PM10 - min(df$PM10)) / (max(df$PM10) - min(df$PM10))
    
    # Efficient vectorized AQI categorization
    df$AQI_Category <- cut(df$PM2.5,
                           breaks = c(-Inf, 12, 35, Inf),
                           labels = c("Good", "Moderate", "Unhealthy"))
    
    # Save the cleaned data without row names
    write.csv(df, "cleaned_aqi_data.csv", row.names = FALSE)
    
    return(df)
    
  }, error = function(e) {
    print(paste("Error processing AQI data:", e))
    return(NULL)
  })
}

# Example usage
file_path <- "data/Air_Quality_Dataset_example.csv"
processed_data <- process_aqi_data(file_path)
