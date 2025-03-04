# Solar Flare Prediction

## Overview
This project aims to predict solar flares using machine learning techniques. Solar flares are classified according to their peak flux (quiet, B, C, M, X classes), and our models attempt to predict this value for upcoming flares.

## Features
- Data analysis and visualization of solar flare patterns
- Baseline fixed-point prediction model
- Advanced machine learning models for improved predictions
- Evaluation using standard metrics like Mean Absolute Error and True Skill Statistic (TSS)

## Key Components
- Data processing and visualization tools
- Feature engineering for solar flare data
- Multiple prediction models with varying complexity
- Comprehensive evaluation framework

## Getting Started
See [SETUP.md](SETUP.md) for installation instructions and prerequisites.

## Project Structure
See [STRUCTURE.md](STRUCTURE.md) for details on how the project is organized.

## Models
1. **Baseline Fixed-Point Model**: A simple baseline that predicts the same value for all flares
2. **Competitive Model**: More advanced approach with feature engineering and sophisticated algorithms
3. **Custom Models**: Additional experimental approaches

## Evaluation
Models are evaluated using:
- Mean Absolute Error (MAE)
- True Skill Statistic (TSS)
- Additional domain-specific metrics

## Data
The project uses solar flare data containing:
- Temporal information (start/end times)
- Peak flux measurements
- Active region (AR) information
- Various flare classifications (quiet, B, C, M, X)

## Project Overview and Workflow

Simplified Flowchart of Project Workflow

1. **Data Collection**

- extract.py: Gathers data from external sources:

- Solar events data from HEK (Heliophysics Events Knowledgebase)

- X-ray flux measurements from GOES satellites

2. **Data Processing**

- transform.py: Processes the raw data:

- Extracts solar flare events

- Maps flares to NOAA active regions

- Creates time ranges for analysis

- Converts between flux values and flare classifications

3. **Data Loading and Image Processing**

- load.py: Manages the data pipeline:

- RequestSender: Fetches FITS file URLs from JSOC (Joint Science Operations Center)

- ImageLoader: Downloads FITS files using these URLs

- OutputProcessor: Converts FITS files to standardized images for ML

4. **Dataset Creation**

- load_data.py: Orchestrates the entire pipeline:

- Loads raw data

- Transforms it into meaningful formats

- Creates sample sets for training and testing

- Produces the final dataset structure

5. **Utilities**

- util.py: Provides helper functions

- file_purge.py: Cleans up unwanted files

6. **Analysis and Modeling**

- baseline_fixedpoint.ipynb: Simple baseline model

- data_analysis.ipynb: Dataset statistics

- model_romanbolzern.ipynb: A more advanced model example

- Key Components and Their Functions

- SDO (Solar Dynamics Observatory): Source of solar imagery data

- GOES: Source of X-ray flux data for solar flare classification

- Source of solar event metadata

- Source for accessing SDO imagery data


