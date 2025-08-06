#!/bin/bash

set -e  # Exit on any error

echo "🔧 Creating virtual environment..."
python3 -m venv venv

echo "📂 Activating virtual environment..."
source venv/bin/activate

echo "📦 Installing dependencies from requirements.txt..."
pip install --upgrade pip
pip install -r requirements.txt

echo "🧪 Running unit tests..."
pytest test_sample.py

echo "✅ CI pipeline completed successfully."
