@echo off
setlocal
set MIDIMT_LANG=S:\__BuildSource\__SVN__\EasyControl-Mackie\EasyControl-Mackie-src\src\Languages
set MIDIMT_LANG_OUT=S:\__BuildSource\__SVN__\EasyControl-Mackie\MIDI-MT-Translate\Translate\origin

IF NOT EXIST "%MIDIMT_LANG%\MIDIMTxRU\RibbonDialogConfigRU.rc" (
echo "FILE NOT FOUND: RibbonDialogConfigRU.rc"
GOTO END
)

set /P AREYOUSURE=Are you sure (Y/[N])?
if /I "%AREYOUSURE%" NEQ "Y" GOTO END

rc2po --progress=names --duplicates=merge --errorlevel=message --input=%MIDIMT_LANG%\MIDIMTxRU\RibbonDialogConfigRU.rc --output=RibbonDialogConfig.tmp
msgcat.exe --no-wrap RibbonDialogConfig.tmp --output-file=%MIDIMT_LANG_OUT%\RibbonDialogConfigRU.pot
del RibbonDialogConfig.tmp

:END
endlocal
exit 0
