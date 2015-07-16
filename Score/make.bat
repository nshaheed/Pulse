REM Compiles both the 10"x13" & 8.5"x11" versions of the score
lilypond -dno-point-and-click -ddelete-intermediate-files -dinclude-settings=fullscoressettings.ly --pdf full_score.ly
lilypond -dno-point-and-click -ddelete-intermediate-files --pdf test_size.ly

REM Compiles the title page and info pages
xelatex.exe title.tex

REM Combine the title page & 10" x 13" score
pdftk.exe title.pdf full_score.pdf cat output pulse.pdf
