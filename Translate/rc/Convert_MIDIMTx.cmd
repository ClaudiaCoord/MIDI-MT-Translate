@echo off
setlocal
set MIDIMT_LANG=S:\__BuildSource\__SVN__\EasyControl-Mackie\EasyControl-Mackie-src\src\Languages
set MIDIMT_LANG_OUT=S:\__BuildSource\__SVN__\EasyControl-Mackie\MIDI-MT-Translate\Translate\origin
set /P AREYOUSURE=Are you sure (Y/[N])?
if /I "%AREYOUSURE%" NEQ "Y" GOTO END

rc2po --progress=names --duplicates=merge --errorlevel=message --input=%MIDIMT_LANG%\MIDIMTxRU\MIDIMTxRU.rc --output=%MIDIMT_LANG_OUT%\MIDIMTxRU.tmp
msgcat.exe --no-wrap %MIDIMT_LANG_OUT%\MIDIMTxRU.tmp --output-file=%MIDIMT_LANG_OUT%\MIDIMTxRU.pot
del %MIDIMT_LANG_OUT%\MIDIMTxRU.tmp

endlocal
exit 0
