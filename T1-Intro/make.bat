set PYTHON="C:\Python27\scripts\asciidoc"

set ASC=%PYTHON%\asciidoc.py

set ASC2=%ASC% -a encoding=ISO-8859-1 -a icons -a iconsdir=%PYTHON%\images\icons
set BLATEX=%ASC2% -b latex
set SLI=%ASC2% -b slidy

%BLATEX% T1.rst

%SLI% T1.rst





pdflatex T1.tex
pdflatex T1.tex

del *.log
del *.aux
del *.idx
del *.out
del *.tex
