@echo off
if %1%==--dl (
	explorer "F:\Dokumenter\Musik\Youtube\"
) else (
	set lul=%1 %2 %3 %4 %5 %6 %7 %8
	shift
	youtube-dl -f bestaudio --ffmpeg-location C:\Users\minic\Documents\Github\Personal-scripts\Windows\Mp3download --extract-audio --audio-format mp3 "ytsearch:%lul%" -o "F:\Dokumenter\Musik\Youtube\%%(title)s.^%%(ext)s"
)