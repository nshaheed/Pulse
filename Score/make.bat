# Compiles both the 10"x13" & 8.5"x11" versions of the score
lilypond -dno-point-and-click -ddelete-intermediate-files --pdf full_score.ly
lilypond -dno-point-and-click -ddelete-intermediate-files --pdf test_size.ly

# Compiles the title page and info pages
xelatex.exe title.tex

# Combine the title page & 10" x 13" score
pdftk.exe title.pdf full_score.pdf cat output pulse.pdf