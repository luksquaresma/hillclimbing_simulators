#!/bin/bash
echo "...Starting Jupyter Notebooks Git Configuration..."




# inserting filter to .gitattribute:

echo "Creating filter..."
echo "[filter "strip-notebook-output"]"  >> .git/config
echo "clean = "jupyter nbconvert --ClearOutputPreprocessor.enabled=True --ClearMetadataPreprocessor.enabled=True --to=notebook --stdin --stdout --log-level=ERROR""  >> .git/config
echo "Filter Created."

echo "Adding .gitattributes..."
echo "*.ipynb filter=strip-notebook-output"  >> .gitattributes
echo "Finished .gitattributes."
