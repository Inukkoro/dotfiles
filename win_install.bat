@echo �Ǘ��Ҍ����Ŏ��s���邱��
@echo ���O��spacemacs�̏���N���Aprezto�̏���N����
@echo �s���Ă�������
pause
@rem call :create_link spacemacs
@rem call :create_link zpreztorc
@rem call :create_link zshrc
for %%i in (.*) do (
@rem ���O������ǉ�����\��
call :create_link %%i
)

pause
exit

:create_link
if exist ..\%1 (move ..\%1 ..\%1_bak)
mklink ..\%1 %1
exit /b
