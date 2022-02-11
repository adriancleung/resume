#!/bin/bash

echo "Building PDF file..."
pdflatex -interaction=batchmode Resume_AdrianLeung.tex 2&> /dev/null
echo "Deleting temp files..."
find . \( -name \*.aux -o -name \*.fdb_latexmk -o -name \*.fls -o -name \*.log -o -name \*.out \) -type f -delete
echo "Build complete"
