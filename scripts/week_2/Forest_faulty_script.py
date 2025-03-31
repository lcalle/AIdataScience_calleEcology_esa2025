# Faulty AI-Generated Script for Forest Biodiversity Survey Dataset
# This script contains AI-generated mistakes that need debugging

import pandas as pd

def process_forest_data(file_path):
    """
    AI-generated function to clean and analyze Forest Biodiversity data.
    Errors are intentionally present for debugging.
    """
    try:
        # Load dataset
        df = pd.read_csv(file_path)
        
        # Convert Tree_Height_m to numeric (AI might fail to handle missing values properly)
        df['Tree_Height_m'] = pd.to_numeric(df['Tree_Height_m'])
        
        # Remove rows with missing species (Potential issue: This may remove too much data)
        df = df[df['Species'] != ""]
        
        # Incorrectly categorizing tree height using an inefficient loop
        df['Height_Category'] = ""
        for i in range(len(df)):
            if df.loc[i, 'Tree_Height_m'] < 10:
                df.loc[i, 'Height_Category'] = "Short"
            elif df.loc[i, 'Tree_Height_m'] < 20:
                df.loc[i, 'Height_Category'] = "Medium"
            else:
                df.loc[i, 'Height_Category'] = "Tall"
        
        # Incorrectly attempting to save the cleaned data (AI may forget index=False)
        df.to_csv("Forest_Biodiversity_Dataset_example.csv")
        
        return df
    
    except Exception as e:
        print("Error processing Forest Biodiversity data:", e)
        return None

# Example usage
file_path = "Forest_Biodiversity_Dataset_example.csv"
processed_data = process_forest_data(file_path)

