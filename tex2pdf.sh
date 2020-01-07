#!/bin/bash

LATEX_MODE="$1"
BIBTEX_MODE="$2"
FILE_NAME=$(basename $3 .tex)

docker run \
  --rm \
  -v $(pwd)/:/latex/ \
  sititou70/latex /usr/bin/build $LATEX_MODE $BIBTEX_MODE "$FILE_NAME.tex"

REMOVE_EXTS=(
  aux
  dvi
  synctex.gz
  log
  bbl
  blg
  lof
  lot
  toc
  out
  bcf
  run.xml
  xcp
)
for ext in ${REMOVE_EXTS[@]}; do
  rm -f $FILE_NAME.$ext
done

