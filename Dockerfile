FROM thii/platex

RUN apt update && \
  apt install biber texlive-latex-extra -y

COPY build /usr/bin/

