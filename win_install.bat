@echo 管理者権限で実行すること
@echo 事前にspacemacsの初回起動、preztoの初回起動を
@echo 行っておくこと
pause
@rem call :create_link spacemacs
@rem call :create_link zpreztorc
@rem call :create_link zshrc
for %%i in (.*) do (
@rem 除外処理を追加する予定
call :create_link %%i
)

pause
exit

:create_link
if exist ..\%1 (move ..\%1 ..\%1_bak)
mklink ..\%1 %1
exit /b
