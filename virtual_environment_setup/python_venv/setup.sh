#!/bin/bash

# Create a virtual environment
python3 -m venv myenv

# Activate the virtual environment
source myenv/bin/activate

# Install packages from requirements.txt
pip install -r requirements.txt

# Print completion message
echo "Python virtual environment setup completed successfully."
