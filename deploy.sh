#!/bin/bash

# Exit script on error
set -e

# Build the project
echo "Building the project..."
npm run build

# Navigate to the dist directory
cd dist

# Initialize a new git repo in dist
echo "Deploying to GitHub Pages..."
git init
git remote add origin https://samuelmccarthy16.github.io/blissful/
git checkout -b gh-pages

# Add all files and commit
git add .
git commit -m "Deploying latest build"

# Force push to gh-pages branch
git push -f origin gh-pages

echo "Deployment complete!"