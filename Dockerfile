FROM thii/platex

RUN apt update && \
  apt install biber texlive-latex-extra -y

COPY build /usr/bin/
COPY build-biber /usr/bin/
COPY build-bibtex /usr/bin/
COPY build-pbibtex /usr/bin/

