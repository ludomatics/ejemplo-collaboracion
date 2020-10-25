#!/bin/bash
mkdir .build/
# Compile document
pdflatex -interaction=nonstopmode -output-directory=.build/ main

# Compile nomenclature
makeindex main.nlo -s nomencl.ist -o main.nls

# Compile index
makeindex main

# Compile bibliography
biber main --input-directory=.build --output-directory=.build

# Compile document
pdflatex -output-directory=.build/ main

# Compile glossary
makeglossaries main

# Compile document
pdflatex -output-directory=.build/ main

mv .build/*pdf ./example.pdf
