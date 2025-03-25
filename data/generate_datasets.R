# Load necessary library
library(dplyr)

# Generate a simplified Air Quality Index (AQI) dataset
generate_aqi_dataset <- function() {
  set.seed(123)
  aqi_data <- data.frame(
    Date = seq(as.Date("2024-01-01"), by = "day", length.out = 30),
    PM2.5 = runif(30, 5, 50),
    PM10 = runif(30, 10, 100),
    CO = runif(30, 0.1, 1.5),
    NO2 = runif(30, 5, 50),
    SO2 = runif(30, 1, 20),
    O3 = runif(30, 10, 80)
  )
  write.csv(aqi_data, "Air_Quality_Dataset_example.csv", row.names = FALSE)
  print("Air_Quality dataset saved as Air_Quality_Dataset_example.csv")
}

# Generate a simplified Forest Biodiversity dataset
generate_forest_dataset <- function() {
  set.seed(123)
  species <- c("Oak", "Pine", "Maple", "Birch", "Spruce")
  forest_data <- data.frame(
    Species = sample(species, 50, replace = TRUE),
    Tree_Height_m = runif(50, 5, 30),
    Canopy_Cover_Perc = runif(50, 20, 90),
    Latitude = runif(50, -5.0, 5.0),
    Longitude = runif(50, -5.0, 5.0)
  )
  write.csv(forest_data, "Forest_Biodiversity_Dataset_example.csv", row.names = FALSE)
  print("Forest dataset saved as Forest_Biodiversity_Dataset_example.csv")
}

# Generate a simplified Water Quality Monitoring dataset
generate_water_quality_dataset <- function() {
  set.seed(123)
  water_quality_data <- data.frame(
    Date = seq(as.Date("2024-01-01"), by = "day", length.out = 14),
    pH = runif(14, 6.5, 8.5),
    Dissolved_Oxygen_mg_L = runif(14, 4, 10),
    Turbidity_NTU = runif(14, 0.5, 5),
    Temperature_C = runif(14, 5, 25)
  )
  write.csv(water_quality_data, "Water_Quality_Dataset_example.csv", row.names = FALSE)
  print("Water quality dataset saved as Water_Quality_Dataset_example.csv")
}

# Run all dataset generators
generate_aqi_dataset()
generate_forest_dataset()
generate_water_quality_dataset()

