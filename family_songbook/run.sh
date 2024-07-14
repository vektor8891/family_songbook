#!/bin/bash
## change directory to family_songbook within the repo
for f in images/*gif; do
    echo "$f"
    #convert "$f" "${f/%gif/png}"
    convert "$f" "${f%.*}.png"
    rm "$f"
done
## Update index & contents (won't work with emojis)
# pdflatex chords.tex
# pdflatex lyrics.tex
# texlua ../src/songidx/songidx.lua toc.sxd toc.sbx
# pdflatex chords.tex
# pdflatex lyrics.tex

## Update contents only
lualatex chords.tex
lualatex lyrics.tex
