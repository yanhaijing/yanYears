@echo off
mode con lines=20 cols=50
title �պ�������2011�����
color 4a
echo.
echo           ��������������   
echo           ��      �պ�������      ��
echo           ��������������
echo.&echo.
echo      �պ�����һ������
echo.
echo      ����ÿ�춼��Ŭ����ֻΪ����Ϊ������
echo.
echo ------------------------------------------
echo.
echo                  ���س�������������...
echo.
echo          ��Ҫ�˳���ֱ�ӹرմ˴���...
echo.
echo                              �պ���
echo  ������%date%
pause>nul

:main
color 4e
cls
echo.&echo.&echo.&echo.
echo          ע��˴������ϰ��Ϊ����
echo.
echo              ���������������1
echo.
set year=
set /p year=       �������������䣺
set /a year=2011-%year%+1
call :get_num %year%
echo.&echo.
echo ------------------------------------------
echo.
echo                  ���س�������������...
echo.
echo          ��Ҫ�˳���ֱ�ӹرմ˴���...
echo.
echo                              �պ���
echo  ʱ�䣺%time:~0,5%
pause>nul
set year=
set years=
goto main

:get_num
set /a years=%year%
set /a years=years%%60+10
for /f "tokens=2,3,4" %%i in ('findstr "%years%" fortune_telling.txt') do (
color 2f
cls
echo.&echo.&echo.&echo.
echo     ���ĳ������ڣ�%year%
echo.
echo     �������ࣺ%%k
echo.
echo     ����%%i�����  ����Ϊ��%%j
)
goto :eof









