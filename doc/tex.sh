#!/bin/sh
basename=book
cd tmp
cp -r ../images ../*.tex ../*.bib .
platex ${basename}.tex && \
jbibtex ${basename} && \
platex ${basename}.tex && \
platex ${basename}.tex && \
dvipdfmx ${basename}.dvi && \
cp ${basename}.pdf ../ && \
cd .. && \
cp ${basename}.pdf ../introduction_programming_language.pdf && \
basename=kindle
cd tmp
cp -r ../images ../*.tex ../*.bib .
platex ${basename}.tex && \
jbibtex ${basename} && \
platex ${basename}.tex && \
platex ${basename}.tex && \
dvipdfmx ${basename}.dvi && \
cp ${basename}.pdf ../ && \
cd .. && \
cp ${basename}.pdf ../introduction_programming_language_a5.pdf
basename=book
cd tmp
../latex2epub.rb && \
cp ${basename}.epub ../ 
cd .. 
cp ${basename}.epub ../introduction_programming_language.epub
open ../introduction_programming_language.pdf
