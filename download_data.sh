#!/bin/bash

# Create a dedicated directory for all data
mkdir -p data

echo "Starting data download from Zenodo..."

# 1. Download 2015 Population Raster (Approx 288 MB)
echo "Downloading 2015 raster..."
wget -O ./data/global_pop_2015.tif "https://zenodo.org/records/17429581/files/global_pop_2015_CN_1km_R2025A_UA_v1.tif?download=1"

# 2. Download 2025 Population Raster (Approx 289 MB)
echo "Downloading 2025 raster..."
wget -O ./data/global_pop_2025.tif "https://zenodo.org/records/17429581/files/global_pop_2025_CN_1km_R2025A_UA_v1.tif?download=1"

# 3. Download and Unzip Shapefile Components (The 'result.zip')
echo "Downloading results zip (Shapefile components)..."
wget -O ./data/result.zip "https://zenodo.org/records/17429581/files/result.zip?download=1"

# Unzip the contents directly into the 'data' folder
echo "Unzipping shapefile components..."
unzip -o ./data/result.zip -d ./data/

# Clean up the downloaded ZIP file
rm ./data/result.zip

echo "All data successfully prepared in the 'data/' folder."
