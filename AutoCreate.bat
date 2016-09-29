@echo off
@echo ---------------------------------------------------------------
@echo 此工具旨在实现自动创建微信小工具开发过程中创建与文件夹同名文件
@echo （包含*.js, *.json, *.wxml, *.wxss）
@echo 使用方式：请将该工具放到需要生成文件夹的目录下
@echo 例如：需要在D:\wechat目录下生成一个modal的文件夹，将该文件放在wechat目录下即可
@echo ---------------------------------------------------------------

set currentRoute=%cd%
set /p folderName=请输入文件夹名称：
@echo 您输入的文件夹名称为：%folderName%

md %currentRoute%\%folderName%
cd %currentRoute%\%folderName%

echo //javascript>%folderName%.js
echo {"navigationBarTitleText" : ""}>%folderName%.json
echo Please Delete This Line>%folderName%.wxml
echo /*Weixin Style Sheet*/>%folderName%.wxss

@echo 生成完成
pause