# AI-Generated Python Script for Feature Engineering & Data Transformation
# This script was generated using an effective prompt

import pandas as pd
from sklearn.preprocessing import MinMaxScaler

def transform_air_quality_data(file_path):
    """
    Loads the air quality dataset, performs feature engineering, and saves the transformed dataset.
    """
    try:
        # Load dataset
        df = pd.read_csv(file_path)
        
        # Categorizing PM2.5 levels
        def categorize_pm25(value):
            if value < 12:
                return "Good"
            elif value < 35:
                return "Moderate"
            else:
                return "Unhealthy"
        
        df['PM2.5_Category'] = df['PM2.5'].apply(categorize_pm25)
        
        # Normalizing PM10 levels using Min-Max Scaling
        scaler = MinMaxScaler()
        df[['PM10']] = scaler.fit_transform(df[['PM10']])
        
        # Save transformed dataset
        transformed_file_path = "transformed_" + file_path
        df.to_csv(transformed_file_path, index=False)
        print(f"Transformed dataset saved as {transformed_file_path}")
        
        return df
    
    except Exception as e:
        print("Error processing the dataset:", e)
        return None

# Example usage
file_path = "Air_Quality_Dataset_example.csv"
processed_data = transform_air_quality_data(file_path)

