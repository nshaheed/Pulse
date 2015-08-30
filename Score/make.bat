REM Compiles both the 10"x13" & 8.5"x11" versions of the score
lilypond -dno-point-and-click -ddelete-intermediate-files -dinclude-settings=fullscoressettings.ly --pdf full_score.ly
lilypond -dno-point-and-click -ddelete-intermediate-files --pdf test_size.ly

REM compiles the forward
C:\Python27\python.exe "C:\Program Files (x86)\LilyPond\usr\bin\lilypond-book.py" --pdf --output=dir preliminaries-book.lytex
rem C:\Python27\python.exe "C:\Program Files (x86)\LilyPond\usr\bin\lilypond-book.py" --pdf preliminaries-book.lytex
xelatex.exe -include-directory=DIR dir\preliminaries-book.tex

REM Compiles the title page and info pages
xelatex.exe title.tex

REM Combine the title page & 10" x 13" score
pdftk.exe title.pdf preliminaries-book.pdf full_score.pdf cat output pulse.pdf
