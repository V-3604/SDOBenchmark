SDO Benchmark
=============

Project Setup
-------------

1. Update the virtualenv module: `pip install -U virtualenv`
2. Create a virtual environment inside the root directory:
`virtualenv .venv`
3. Activate the newly created virtual environment from the command line:
`source .venv/bin/activate` on linux
or `.venv\Scripts\activate.bat` on Windows.
4. Install the requirements: `pip install -r requirements.txt`


# Setup Instructions

## Prerequisites
- Python 3.6 or higher
- Git (for version control)
- Sufficient storage space for datasets and model outputs

## Installation

### 1. Clone the Repository
```bash
git clone [repository-url]
cd [repository-name]
```
### 2. Create a Virtual Environment (recommended)
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```
### 3.Install Dependencies
```bash
pip install -r requirements.txt
```
### 4. Data Setup
```bash
The project expects data to be organized in the following structure:


/data/
├── training/
│   └── meta_data.csv
└── test/
    └── meta_data.csv
Update the base path in scripts if your data is located elsewhere:




base_path = 'path/to/your/data/'
```
### 5. Install Additional Requirements
```bash
# For GPU support
pip install tensorflow-gpu

# For visualization enhancements
pip install seaborn plotly
```
### 6.Running the project
```bash
jupyter notebook data_analysis.ipynb

jupyter notebook baseline_fixedpoint.ipynb

jupyter notebook model_romanbolzern.ipynb
# or
python model_formulation_romanbolzern.py
```