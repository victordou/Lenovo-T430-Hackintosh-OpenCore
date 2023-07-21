@echo -off
echo " "
if exist fs0:\EFI\BOOT\startup.nsh then
fs0:
echo cd to fs0:
goto END
endif
if exist fs1:\EFI\BOOT\startup.nsh then
fs1:
echo cd to fs1:
goto END
endif
if exist fs2:\EFI\BOOT\startup.nsh then
fs2:
echo cd to fs2:
goto END
endif
if exist fs3:\EFI\BOOT\startup.nsh then
fs3:
echo cd to fs3:
goto END
endif
if exist fs4:\EFI\BOOT\startup.nsh then
fs4:
echo cd to fs4:
goto END
endif
if exist fs5:\EFI\BOOT\startup.nsh then
fs5:
echo cd to fs5:
goto END
endif
if exist fs6:\EFI\BOOT\startup.nsh then
fs6:
echo cd to fs6:
goto END
endif
if exist fs7:\EFI\BOOT\startup.nsh then
fs7:
echo cd to fs7:
goto END
endif
if exist fs8:\EFI\BOOT\startup.nsh then
fs8:
echo cd to fs8:
goto END
endif
if exist fs9:\EFI\BOOT\startup.nsh then
fs9:
echo cd to fs9:
goto END
endif
:END