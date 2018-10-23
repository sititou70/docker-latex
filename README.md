# docker-platex
The docker image for building tex to pdf.

# useage
download `tex2pdf.sh` on directory there is target tex file, and run `./tex2pdf.sh [tex file]`.

## customise
below commands are available in container.

* build
* build-bibtex
* build-pbibtex
* build-biber

edit tex2pdf script if you need to use commands other than `build`.

# docker hub
[sititou70/platex](https://hub.docker.com/r/sititou70/platex/)

# thanks
## thii
This image is using [thii/docker-platex](https://github.com/thii/docker-platex).

## D.Takahashi.cpp14
technical cooperated to correspond to bibtex.

