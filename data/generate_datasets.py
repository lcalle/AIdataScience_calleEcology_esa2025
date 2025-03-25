import pandas as pd
import numpy as np

# Generate a simplified Air Quality Index (AQI) dataset
def generate_aqi_dataset():
    aqi_data = {
        "Date": pd.date_range(start="2024-01-01", periods=30, freq="D"),
        "PM2.5": np.random.uniform(5, 50, 30),
        "PM10": np.random.uniform(10, 100, 30),
        "CO": np.random.uniform(0.1, 1.5, 30),
        "NO2": np.random.uniform(5, 50, 30),
        "SO2": np.random.uniform(1, 20, 30),
        "O3": np.random.uniform(10, 80, 30)
    }
    df = pd.DataFrame(aqi_data)
    df.to_csv("Air_Quality_Dataset_example.csv", index=False)
    print("Air_Quality dataset saved as Air_Quality_Dataset_example.csv")

# Generate a simplified Forest Biodiversity dataset
def generate_forest_dataset():
    forest_data = {
        "Species": np.random.choice(["Oak", "Pine", "Maple", "Birch", "Spruce"], 50),
        "Tree_Height_m": np.random.uniform(5, 30, 50),
        "Canopy_Cover_%": np.random.uniform(20, 90, 50),
        "Latitude": np.random.uniform(-5.0, 5.0, 50),
        "Longitude": np.random.uniform(-5.0, 5.0, 50)
    }
    df = pd.DataFrame(forest_data)
    df.to_csv("Forest_Biodiversity_Dataset_example.csv", index=False)
    print("Forest dataset saved as Forest_Biodiversity_Dataset_example.csv")

# Generate a simplified Water Quality Monitoring dataset
def generate_water_quality_dataset():
    water_quality_data = {
        "Date": pd.date_range(start="2024-01-01", periods=14, freq="D"),
        "pH": np.random.uniform(6.5, 8.5, 14),
        "Dissolved_Oxygen_mg_L": np.random.uniform(4, 10, 14),
        "Turbidity_NTU": np.random.uniform(0.5, 5, 14),
        "Temperature_C": np.random.uniform(5, 25, 14)
    }
    df = pd.DataFrame(water_quality_data)
    df.to_csv("Water_Quality_Dataset_example.csv", index=False)
    print("Water quality dataset saved as Water_Quality_Dataset_example.csv")

# Run all dataset generators
generate_aqi_dataset()
generate_forest_dataset()
generate_water_quality_dataset()
