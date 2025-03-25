# AI-Generated R Script for Data Visualization
# This script was generated using an effective prompt

library(ggplot2)

visualize_air_quality <- function(file_path) {
  #Loads the air quality dataset and generates multiple visualizations.
  tryCatch({
    # Load dataset
    df <- read.csv(file_path, stringsAsFactors = FALSE)
    
    # Convert Date column to Date format, handling potential parsing issues
    df$Date <- as.Date(df$Date, tryFormats = c("%Y-%m-%d", "%d/%m/%Y"))
    
    # Ensure Date column is valid before plotting
    if (all(is.na(df$Date))) {
      stop("Date column could not be parsed correctly.")
    }
    
    # Line plot: PM2.5 levels over time
    plot1 <- ggplot(df, aes(x = Date, y = PM2.5)) +
      geom_line(color = "blue") +
      ggtitle("PM2.5 Levels Over Time") +
      xlab("Date") +
      ylab("PM2.5 (µg/m³)") +
      theme_minimal()
    print(plot1)
    
    # Histogram: Distribution of PM10 concentrations
    plot2 <- ggplot(df, aes(x = PM10)) +
      geom_histogram(binwidth = 5, fill = "blue", color = "black", alpha = 0.7) +
      ggtitle("Distribution of PM10 Concentrations") +
      xlab("PM10 (µg/m³)") +
      ylab("Frequency") +
      theme_minimal()
    print(plot2)
    
    print("Visualizations generated successfully.")
    
  }, error = function(e) {
    print(paste("Error processing the dataset:", e))
  })
}

# Example usage
file_path <- "Air_Quality_Dataset_example.csv"
visualize_air_quality(file_path)
