# AI-Generated Python Script for Data Visualization
# This script was generated using an effective prompt

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

def visualize_air_quality(file_path):
    """
    Loads the air quality dataset and generates multiple visualizations.
    """
    try:
        # Load dataset
        df = pd.read_csv(file_path)
        
        # Convert Date column to datetime format
        df['Date'] = pd.to_datetime(df['Date'], errors='coerce')
        
        # Line plot: PM2.5 levels over time
        plt.figure(figsize=(10,5))
        sns.lineplot(x=df['Date'], y=df['PM2.5'])
        plt.title("PM2.5 Levels Over Time")
        plt.xlabel("Date")
        plt.ylabel("PM2.5 (µg/m³)")
        plt.xticks(rotation=45)
        plt.show()
        
        # Histogram: Distribution of PM10 concentrations
        plt.figure(figsize=(8,5))
        sns.histplot(df['PM10'], bins=30, kde=True)
        plt.title("Distribution of PM10 Concentrations")
        plt.xlabel("PM10 (µg/m³)")
        plt.ylabel("Frequency")
        plt.show()
        
        print("Visualizations generated successfully.")
        
    except Exception as e:
        print("Error processing the dataset:", e)

# Example usage
file_path = "Air_Quality_Dataset_example.csv"
visualize_air_quality(file_path)

