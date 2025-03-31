# Faulty AI-Generated Script for Water Quality Monitoring Dataset
# This script contains AI-generated mistakes that need debugging

import pandas as pd

def process_water_quality_data(file_path):
    """
    AI-generated function to clean and analyze Water Quality data.
    Errors are intentionally present for debugging.
    """
    try:
        # Load dataset
        df = pd.read_csv(file_path)
        
        # Convert Date column to datetime format (AI might forget errors='coerce')
        df['Date'] = pd.to_datetime(df['Date'])
        
        # Remove rows with missing values (Potential issue: Could remove useful data unnecessarily)
        df = df.dropna()
        
        # Incorrectly normalizing pH values (AI might apply an unnecessary transformation)
        df['pH'] = df['pH'] / df['pH'].max()
        
        # Inefficient loop for classifying water turbidity levels instead of vectorized operation
        turbidity_category = []
        for value in df['Turbidity_NTU']:
            if value < 1:
                turbidity_category.append("Clear")
            elif value < 3:
                turbidity_category.append("Moderate")
            else:
                turbidity_category.append("Turbid")
        df['Turbidity_Category'] = turbidity_category
        
        # Incorrectly attempting to save the cleaned data (AI may forget index=False)
        df.to_csv("Water_Quality_Dataset_example.csv")
        
        return df
    
    except Exception as e:
        print("Error processing Water Quality data:", e)
        return None

# Example usage
file_path = "Water_Quality_Dataset_example.csv"
processed_data = process_water_quality_data(file_path)
