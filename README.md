# docker-latex
The docker image to convert tex to pdf.

# useage
download `tex2pdf.sh` on directory there is target tex file
and run `./tex2pdf.sh [latex mode] [bibtex mode] [tex file]`

## latex mode
* latex
* platex
* uplatex

## bibtex mode
* nobibtex
* bibtex
* pbibtex
* upbibtex
* biber

### example
`./tex2pdf.sh platex pbibtex main.tex`

# docker hub
[sititou70/latex](https://hub.docker.com/r/sititou70/latex/)

