@echo off
REM Tim's Dashboard — git commit and push after any data update
cd /d "C:\Users\tests\Documents\GitHub\tim-dashboard"
git add data\*.json
git commit -m "Dashboard update %DATE% %TIME%"
git push origin main
