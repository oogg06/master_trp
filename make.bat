set DIR=apuntes
set PYTHON="C:\Python27\scripts\"

del %DIR%\*.* /Q

copy Apuntes.rst %DIR%


copy T1-Intro\*.rst %DIR%
copy T1-Intro\*.png %DIR%

copy T2-ESO-PCPI\*.rst %DIR%
copy T2-ESO-PCPI\*.png %DIR%

copy T3-Bach\*.rst %DIR%
copy T3-Bach\*.png %DIR%

copy T4-CFGM\*.png %DIR%
copy T4-CFGM\*.rst %DIR%

copy T5-CFGS\*.png %DIR%
copy T5-CFGS\*.rst %DIR%

cd %DIR%
"C:\Python27\Scripts\rst2newlatex.py" Apuntes.rst > Apuntes.tex

pdflatex Apuntes.tex
pdflatex Apuntes.tex
start Apuntes.pdf
del *.out
del *.log
del *.aux


cd ..