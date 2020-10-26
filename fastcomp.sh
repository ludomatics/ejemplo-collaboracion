#!/bin/bash
if [ -d .build ]; then
  mkdir .build/
fi

# Compile document
pdflatex -output-directory=.build/ main

# Final PDF file name is apuntes.pdf
mv .build/*pdf ./apuntes.pdf
