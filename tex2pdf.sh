#!/bin/bash

# option
usage_exit() {
  echo "Usage: $0 [-w(watch mode)]"
  exit 1
}

WATCH_OPTION=""
while getopts wh OPT; do
  case $OPT in
  w)
    WATCH_OPTION="-pvc -view=none"
    ;;
  h)
    usage_exit
    ;;
  \?)
    usage_exit
    ;;
  esac
done
shift $(($OPTIND - 1))

# build tex
FILE_NAME=$(basename $1 .tex)

docker run \
  --rm \
  -v $(pwd)/:/latex/ \
  sititou70/latex:v2.0.0 latexmk -pdfdvi $WATCH_OPTION $FILE_NAME

# remove unnecessary files
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
