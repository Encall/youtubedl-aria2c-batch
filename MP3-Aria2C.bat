@echo off
cls
:start
color a
title Youtube Music Downloader Made By EnCalL
echo -----------------------------------------------------------------
echo This Batch File is Made By Encall
echo Downloader Type : ARIA2C External Downloader
cd
Set /p "input=Please enter your youtube video link: "
echo.Youtube Playlist Link is: %input%
Set /p "direct=Please enter directory: "
echo.Directory is: %direct%
youtube-dl -i --extract-audio --format bestaudio --audio-format mp3 --embed-thumbnail --add-metadata --external-downloader aria2c --external-downloader-args "-x 16 -s 16 -k 1M" -o "\%direct%\%%(title)s.%%(ext)s" --yes-playlist "%input%"
set /p choice="Do you want to restart? Press 'y' and enter for Yes: "
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='y' goto start
