#!/bin/bash

# Clean previous build
echo "Cleaning previous build..."
rm -rf dist

# Build the frontend
echo "Building frontend..."
vite build

# Build the backend
echo "Building backend..."
esbuild server/index.ts --platform=node --packages=external --bundle --format=esm --outdir=dist

# Copy files from dist/public to dist root for deployment
echo "Reorganizing build files for deployment..."
if [ -d "dist/public" ]; then
    # Copy all files from dist/public to dist root
    cp -r dist/public/* dist/
    # Remove the public subdirectory
    rm -rf dist/public
    echo "Build files reorganized successfully"
    # Verify index.html is in the right place
    if [ -f "dist/index.html" ]; then
        echo "✓ index.html found in dist/"
    else
        echo "✗ Warning: index.html not found in dist/"
    fi
else
    echo "Warning: dist/public directory not found"
fi

echo "Build complete!"