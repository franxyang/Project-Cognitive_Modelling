#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

pandoc proposal-slides.md \
  --from markdown+tex_math_dollars+fenced_divs+raw_html \
  --to revealjs \
  --standalone \
  --slide-level=2 \
  --variable theme=white \
  --mathjax=https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js \
  --css custom.css \
  --output index.html

pandoc proposal-slides.md \
  --from markdown+tex_math_dollars+fenced_divs+raw_html \
  --to beamer \
  --slide-level=2 \
  --pdf-engine=xelatex \
  --variable aspectratio=169 \
  --variable fontsize=10pt \
  --variable colorlinks=true \
  --output proposal-slides.pdf
