REM 關閉echo
@echo off

REM 開啟延遲功能
setlocal EnableDelayedExpansion

REM 設定一個變數叫str
set str=2023-10-

REM 建立一個迴圈從1到30，迴圈變數叫x，從1開始，每次加1，到30停止
for /l %%x in (1, 1, 30) do (   
   
   REM 設定一個變數叫datestr，加入str和x
   set datestr=DataBase_Path\%str%%%x

   REM 呼叫robocopy從遠端\\10.10.10.10下載datestr這個資料夾到D槽，只下載txt檔，使用鏡像下載
   echo "robocopy \\10.10.10.10\!datestr! D:\!datestr! *.txt /mir /MT:64"

   REM 等待10秒
   timeout /t 10
) 

pause

