FROM python:3.7

MAINTAINER Philip Lundrigan <philiplundrigan@gmail.com>

# Install Tex
RUN apt-get update -q && apt-get install -qy \
    texlive-full \
    python-pygments \
    gnuplot \
    make \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install pandoc
RUN apt-get update -q && apt-get install -qy \
    pandoc \
    pandoc-citeproc \
    && rm -rf /var/lib/apt/lists/*
