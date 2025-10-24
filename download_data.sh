#!/bin/bash

# Create a directory to store the data
mkdir -p data

# 1. Download the CSV file (159.9 KB)
echo "Downloading admin level 1 codes..."
wget -O ./data/adm1_pcode.csv "https://zenodo.org/records/17429581/files/adm1_pcode-1.csv?download=1"

# 2. Download the 2015 Raster (288.2 MB)
echo "Downloading 2015 population raster..."
wget -O ./data/global_pop_2015.tif "PASTE_THE_2015_RASTER_LINK_HERE"

# 3. Download the 2025 Raster (289.5 MB)
echo "Downloading 2025 population raster..."
wget -O ./data/global_pop_2025.tif "PASTE_THE_2025_RASTER_LINK_HERE"

echo "All data download commands added."
