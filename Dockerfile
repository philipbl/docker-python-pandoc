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

# Install pandoc
RUN wget https://github.com/jgm/pandoc/releases/download/2.2.2.1/pandoc-2.2.2.1-1-amd64.deb -O pandoc.deb \
    && dpkg -i pandoc.deb \
    && rm pandoc.deb
