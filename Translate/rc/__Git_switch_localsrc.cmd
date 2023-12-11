@echo off
setlocal
set MIDIMT_LANG_DIR=S:\__BuildSource\__SVN__\EasyControl-Mackie\EasyControl-Mackie-src\src\Languages
git checkout localsrc
git merge main
git commit --message="autoupdate"

:END
endlocal
exit 0
