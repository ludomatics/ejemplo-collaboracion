#!/bin/bash
if [ -d .build ]; then
  mkdir .build/
fi
# Compile document
pdflatex -interaction=nonstopmode -output-directory=.build/ main

# Compile document
pdflatex -output-directory=.build/ main

mv .build/*pdf ./apuntes.pdf
