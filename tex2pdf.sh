fileName=${@%.*}

docker run --rm -v `pwd`/:/latex/ sititou70/platex build "$@"

rm ${fileName}.aux
rm ${fileName}.dvi
rm ${fileName}.synctex.gz
rm ${fileName}.log
rm ${fileName}.bbl
rm ${fileName}.blg

