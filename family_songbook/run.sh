#!/bin/bash
for f in images/*gif; do
    echo "$f"
    #convert "$f" "${f/%gif/png}"
    convert "$f" "${f%.*}.png"
    rm "$f"
done
#pdflatex chords.tex
#pdflatex lyrics.tex
#texlua ../src/songidx/songidx.lua toc.sxd toc.sbx
#pdflatex chords.tex
#pdflatex lyrics.tex

lualatex chords.tex
lualatex lyrics.tex
#texlua ../src/songidx/songidx.lua toc.sxd toc.sbx
#lualatex chords.tex
#lualatex lyrics.tex
