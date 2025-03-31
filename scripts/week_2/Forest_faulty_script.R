# Faulty AI-Generated Script for Forest Biodiversity Survey Dataset
# This script contains AI-generated mistakes that need debugging

process_forest_data <- function(file_path) {
  #AI-generated function to clean and analyze Forest Biodiversity data.
  #Errors are intentionally present for debugging.
  tryCatch({
    # Load dataset
    df <- read.csv(file_path, stringsAsFactors = FALSE)
    
    # Convert Tree_Height_m to numeric (AI might fail to handle missing values properly)
    df$Tree_Height_m <- as.numeric(df$Tree_Height_m)
    
    # Remove rows with missing species (Potential issue: This may remove too much data)
    df <- df[df$Species != "", ]
    
    # Incorrectly categorizing tree height using an inefficient loop
    df$Height_Category <- ""
    for (i in 1:nrow(df)) {
      if (df$Tree_Height_m[i] < 10) {
        df$Height_Category[i] <- "Short"
      } else if (df$Tree_Height_m[i] < 20) {
        df$Height_Category[i] <- "Medium"
      } else {
        df$Height_Category[i] <- "Tall"
      }
    }
    
    # Incorrectly attempting to save the cleaned data (AI may forget row.names = FALSE)
    write.csv(df, "Forest_Biodiversity_Dataset_example.csv")
    
    return(df)
    
  }, error = function(e) {
    print(paste("Error processing Forest Biodiversity data:", e))
    return(NULL)
  })
}

# Example usage
file_path <- "Forest_Biodiversity_Dataset_example.csv"
processed_data <- process_forest_data(file_path)

