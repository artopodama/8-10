#!/bin/bash

if [ ! -d "./groff.html" ]; then
  rm groff.html
fi
if [ ! -d "./pandoc.pdf" ]; then
  rm pandoc.pdf
fi
if [ ! -d "./groff.pdf" ]; then
  rm groff.pdf
fi

groff -ms groff.txt -T html > groff.html

pandoc -N --quiet groff.html -o pandoc.pdf

groff -ms groff.txt -T pdf > groff.pdf
