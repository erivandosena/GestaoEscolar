@echo off
echo.
echo Limpando Codigos...
if exist *.~?? del *.~??
if exist *.dcu del *.dcu
if exist *.opt del *.opt
if exist *.dsm del *.dsm
if exist *.dsk del *.dsk

if exist c:\Windows\Temp\Pdoxusrs.net del c:\Windows\Temp\Pdoxusrs.net 
echo Aten��o: Somente delete o Arquivo .Res caso voc� tenha as imagens e as
echo          listagems de �ndices dos componentes que requerem a propriedade
echo          list tipo ComboBox ou ListBox
echo.
echo Inforamos
echo.
