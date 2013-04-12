@echo off
mode con lines=20 cols=50
title 颜海镜算命2011贺岁版
color 4a
echo.
echo           ☆☆☆☆☆☆☆☆☆☆☆☆☆   
echo           ☆      颜海镜算命      ☆
echo           ☆☆☆☆☆☆☆☆☆☆☆☆☆
echo.&echo.
echo      颜海镜是一种理念
echo.
echo      我们每天都在努力，只为更好为您服务
echo.
echo ------------------------------------------
echo.
echo                  按回车键进入主界面...
echo.
echo          若要退出请直接关闭此窗口...
echo.
echo                              颜海镜
echo  日历：%date%
pause>nul

:main
color 4e
cls
echo.&echo.&echo.&echo.
echo          注意此处按民间习惯为虚岁
echo.
echo              即您的周岁年龄加1
echo.
set year=
set /p year=       请输入您的年龄：
set /a year=2011-%year%+1
call :get_num %year%
echo.&echo.
echo ------------------------------------------
echo.
echo                  按回车键进入主界面...
echo.
echo          若要退出请直接关闭此窗口...
echo.
echo                              颜海镜
echo  时间：%time:~0,5%
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
echo     您的出生日期：%year%
echo.
echo     您的属相：%%k
echo.
echo     您是%%i年出生  年命为：%%j
)
goto :eof









