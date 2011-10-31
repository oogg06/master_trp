set OBJ=T1

set PYTHON="C:\Python27\scripts\asciidoc"

set DIR_ICONOS="C:/Python27/scripts/asciidoc/images/icons"
set ASC=%PYTHON%\asciidoc.py

set OPCIONES_ICONOS=-a icons -a iconsdir=%DIR_ICONOS%

set ASC2=%ASC% -a encoding=ISO-8859-1  -a lang=es %OPCIONES_ICONOS%  -a toc

set BLATEX=%ASC2% -b latex

set SLI=%ASC2% -b slidy

%SLI% %OBJ%.rst
start %OBJ%.html

%BLATEX% %OBJ%.rst





pdflatex T1.tex
pdflatex T1.tex

del *.log
del *.aux
del *.idx
del *.out
rem del *.tex

rem start %OBJ%.pdf
