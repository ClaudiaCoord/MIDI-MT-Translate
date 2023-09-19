@echo off
setlocal
set MIDIMT_LANG_DIR=S:\__BuildSource\__SVN__\EasyControl-Mackie\EasyControl-Mackie-src\src\Languages
git pull origin main
git checkout gitlocalize-%1
git merge main
git push -u origin gitlocalize-%1

:END
endlocal
exit 0
