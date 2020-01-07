FROM ubuntu:bionic
ENV DEBIAN_FRONTEND noninteractive

COPY src/sources.list /etc/apt/sources.list

RUN apt update \
  && apt upgrade -y \
  && apt -qy install \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-lang-cjk \
    texlive-lang-japanese \
    texinfo \
    xdvik-ja \
    biber \
  && apt clean \
  && apt autoremove \
  && rm -rf /var/lib/apt/lists/*

COPY src/build /usr/bin/

VOLUME /latex
WORKDIR /latex

