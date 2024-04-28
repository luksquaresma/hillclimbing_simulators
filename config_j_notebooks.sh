#!/bin/bash
echo "...Starting Jupyter Notebooks Git Configuration..."

echo "Creating filter..."
git config filter.strip-notebook-output.clean 'jupyter nbconvert --ClearOutputPreprocessor.enabled=True --to=notebook --stdin --stdout --log-level=ERROR'
echo "Filter Created."

echo "Adding .gitattributes..."
echo "*.ipynb filter=strip-notebook-output"  >> .gitattributes
echo "Finished .gitattributes."
