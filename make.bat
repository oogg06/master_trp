
set DIR=apuntes
set PYTHON="C:\Python27\scripts\"

set OBJ=Apuntes

set PYTHON="C:\Python27\scripts\asciidoc"

set DIR_ICONOS="C:/Python27/scripts/asciidoc/images/icons"
set ASC=%PYTHON%\asciidoc.py

set OPCIONES_ICONOS=-a icons -a iconsdir=%DIR_ICONOS%

set ASC2=%ASC% -a encoding=ISO-8859-1  -a lang=es %OPCIONES_ICONOS%  -d book

set BLATEX=%ASC2% -b latex




del %DIR%\*.* /Q

copy %OBJ%.rst %DIR%


copy T1-Intro\*.rst %DIR%


copy T2-ESO-PCPI\*.rst %DIR%


copy T3-Bach\*.rst %DIR%


copy T4-CFGM\*.png %DIR%

copy T5-CFGS\*.png %DIR%

copy img\*.png %DIR%

cd %DIR%
%BLATEX% %OBJ%.rst

pdflatex %OBJ%.tex
pdflatex %OBJ%.tex
start %OBJ%.pdf
del *.out
del *.log
del *.aux
del *.png

cd ..