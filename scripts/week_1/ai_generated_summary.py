# AI-Generated Python Script for Descriptive Statistics & Data Cleaning
# This script was generated using an effective prompt

import pandas as pd

def summarize_and_clean_data(file_path):
    """
    Loads a dataset, displays summary statistics, handles missing values, and saves a cleaned version.
    """
    try:
        # Load dataset
        df = pd.read_csv(file_path)
        
        # Display summary statistics
        print("Summary Statistics:")
        print(df.describe())
        
        # Check for missing values
        print("\nMissing Values:")
        print(df.isnull().sum())
        
        # Handling missing values (filling with column mean)
        df.fillna(df.mean(), inplace=True)
        
        # Save cleaned dataset
        cleaned_file_path = "cleaned_" + file_path
        df.to_csv(cleaned_file_path, index=False)
        print(f"Cleaned dataset saved as {cleaned_file_path}")
        
        return df
    
    except Exception as e:
        print("Error processing the dataset:", e)
        return None

# Example usage
file_path = "Air_Quality_Dataset_example.csv"
processed_data = summarize_and_clean_data(file_path)

