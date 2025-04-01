# Faulty AI-Generated Script for Air Quality Index (AQI) Dataset
# This script contains AI-generated mistakes that need debugging

import pandas as pd

def process_aqi_data(file_path):
    """
    AI-generated function to clean and analyze AQI data.
    Errors are intentionally present for debugging.
    """
    try:
        # Load dataset
        df = pd.read_csv(file_path)
        
        # Convert Date column to datetime format (AI may forget to specify errors='coerce')
        df['Date'] = pd.to_datetime(df['Date'])
        
        # Drop rows where any value is missing (Potential issue: Could be too aggressive)
        df = df.dropna()
        
        # Normalize air quality values incorrectly using standard deviation instead of min-max scaling
        df['PM2.5'] = (df['PM2.5'] - df['PM2.5'].mean()) / df['PM2.5'].std()
        df['PM10'] = (df['PM10'] - df['PM10'].mean()) / df['PM10'].std()
        
        # Inefficient loop for calculating AQI category (AI might use a slow for-loop instead of vectorized operations)
        categories = []
        for value in df['PM2.5']:
            if value < 12:
                categories.append("Good")
            elif value < 35:
                categories.append("Moderate")
            else:
                categories.append("Unhealthy")
        df['AQI_Category'] = categories
        
        # Incorrectly attempting to save the cleaned data (AI may forget index=False)
        df.to_csv("cleaned_aqi_data.csv")
        
        return df
    
    except Exception as e:
        print("Error processing AQI data:", e)
        return None

# Example usage
file_path = "Simplified_AQI_Dataset.csv"
processed_data = process_aqi_data(file_path)

