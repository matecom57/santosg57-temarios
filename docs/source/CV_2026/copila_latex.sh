#!/bin/bash

rm  main.pdf
pdflatex main.tex

rm main.aux
rm main.log

open main.pdf
