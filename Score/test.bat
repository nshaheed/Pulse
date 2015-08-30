C:\Python27\python.exe "C:\Program Files (x86)\LilyPond\usr\bin\lilypond-book.py" --pdf --output=dir preliminaries-book.lytex
rem C:\Python27\python.exe "C:\Program Files (x86)\LilyPond\usr\bin\lilypond-book.py" --pdf preliminaries-book.lytex
xelatex.exe -include-directory=DIR dir\preliminaries-book.tex
