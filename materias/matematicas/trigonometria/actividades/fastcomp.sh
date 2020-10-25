#!/bin/bash
if [ -d .build ]; then
  mkdir .build/
fi

# Compile document
pdflatex -output-directory=.build/ $1

mv .build/*pdf ./$1.pdf
