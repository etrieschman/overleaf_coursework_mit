# Compile from the REPO ROOT so \input{preamble} resolves the same way it does
# on Overleaf:
#     latexmk -pdf 15_081/hw7.tex
#
# -shell-escape is required by minted.
$pdflatex = 'pdflatex -interaction=nonstopmode -shell-escape %O %S';
$xelatex  = 'xelatex  -interaction=nonstopmode -shell-escape %O %S';
$pdf_mode = 1;
