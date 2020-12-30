#!/bin/bash

FILE_NAME=$(basename $1 .tex)

docker run \
  --rm \
  -v $(pwd)/:/latex/ \
  sititou70/latex:v2.0.0 latexmk -pdfdvi $FILE_NAME

REMOVE_EXTS=(
  aux
  dvi
  synctex.gz
  log
  bbl
  blg
  fdb_latexmk
  fls
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
