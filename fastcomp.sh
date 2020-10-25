#!/bin/bash
if [ -d .build ]; then
  mkdir .build/
fi

# Compile document
pdflatex -output-directory=.build/ main

mv .build/*pdf ./universidad.pdf
