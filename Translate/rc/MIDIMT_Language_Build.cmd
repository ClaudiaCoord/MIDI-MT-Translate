@echo off

setlocal
set REPO_ROOT=E:\__BuildSource\__SVN__\EasyControl-Mackie\MIDI-MT-Translate\Translate
set MIDIMT_LANG_DIR=E:\__BuildSource\__SVN__\EasyControl-Mackie\EasyControl-Mackie-src\src\Languages

IF "%1" EQU "" (
echo "needed LANG ID argument... (DE, BY, RU,..)"
GOTO END
)
IF "%1" EQU "RU" (
echo "LANG ID - NOT RU!!!"
GOTO END
)
IF "%2" EQU "" (
echo "needed MS LANG argument... (LANG_GERMAN, LANG_RUSSIAN, ..)"
GOTO END
)

po2rc --lang=%2 --charset=utf-8 -i %REPO_ROOT%\translate\MIDIMTx%1.po -t %REPO_ROOT%\rc\MIDIMTxRU.rc -o %REPO_ROOT%\rc\MIDIMTx%1.rc
mkdir %MIDIMT_LANG_DIR%\MIDIMTx%1

IF EXIST %MIDIMT_LANG_DIR%\MIDIMTx%1 (
xcopy /Y /R %REPO_ROOT%\rc\MIDIMTx%1.rc %MIDIMT_LANG_DIR%\MIDIMTx%1
) ELSE (
echo "create directory ERROR: %MIDIMT_LANG_DIR%\MIDIMTx%1"
GOTO END
)

powershell -Command "(gc %REPO_ROOT%\rc\project\MIDIMTx__.vcxproj) -replace 'MIDIMTx__', 'MIDIMTx%1' | Out-File -encoding utf8 MIDIMTx%1.vcxproj"
powershell -Command "(gc %REPO_ROOT%\rc\project\MIDIMTx__.vcxproj.filters) -replace 'MIDIMTx__', 'MIDIMTx%1' | Out-File -encoding utf8 MIDIMTx%1.vcxproj.filters"
powershell -Command "(gc %REPO_ROOT%\rc\project\MIDIMTx__.vcxproj.user) -replace 'MIDIMTx__', 'MIDIMTx%1' | Out-File -encoding utf8 MIDIMTx%1.vcxproj.user"

xcopy /Y /R %REPO_ROOT%\rc\project\AboutLogo.bmp %MIDIMT_LANG_DIR%\MIDIMTx%1
xcopy /Y /R %REPO_ROOT%\rc\project\vc140.pdb %MIDIMT_LANG_DIR%\MIDIMTx%1
xcopy /Y /R %REPO_ROOT%\rc\MIDIMTx%1.vcxproj %MIDIMT_LANG_DIR%\MIDIMTx%1
xcopy /Y /R %REPO_ROOT%\rc\MIDIMTx%1.vcxproj.filters %MIDIMT_LANG_DIR%\MIDIMTx%1
xcopy /Y /R %REPO_ROOT%\rc\MIDIMTx%1.vcxproj.user %MIDIMT_LANG_DIR%\MIDIMTx%1

del %REPO_ROOT%\rc\MIDIMTx%1.vcxproj
del %REPO_ROOT%\rc\MIDIMTx%1.vcxproj.filters
del %REPO_ROOT%\rc\MIDIMTx%1.vcxproj.user
del %REPO_ROOT%\rc\MIDIMTx%1.rc

:END
endlocal
exit 0
