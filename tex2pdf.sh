#!/bin/bash

SCRIPT_NAME=$1
FILE_NAME=$(basename $2 .tex)

docker run --rm -v $(pwd)/:/latex/ sititou70/platex $SCRIPT_NAME $FILE_NAME.tex

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
)
for ext in ${REMOVE_EXTS[@]}; do
  rm -f $FILE_NAME.$ext
done

