FROM python:3.8

MAINTAINER Philip Lundrigan <philiplundrigan@gmail.com>

# Install Tex
RUN apt-get update -q && apt-get install -qy \
    texlive-full \
    python-pygments \
    gnuplot \
    make \
    git \
    && rm -rf /var/lib/apt/lists/*

ARG PANDOC_VERSION=2.9.2.1

# Install pandoc
RUN wget https://github.com/jgm/pandoc/releases/download/$PANDOC_VERSION/pandoc-$PANDOC_VERSION-1-amd64.deb -O pandoc.deb \
    && dpkg -i pandoc.deb \
    && rm pandoc.deb
