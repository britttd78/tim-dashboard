@echo off
REM Tim's Dashboard — git commit and push after any data update
cd /d "C:\Users\tests\Documents\GitHub\tim-dashboard"
git add data\*.json
git commit -m "Dashboard update %DATE% %TIME%"
git push origin main
if errorlevel 1 (
  echo PUSH_FAILED: GitHub push did not succeed. The website will NOT update until git credentials are fixed.
  exit /b 1
)
echo PUSH_OK: Dashboard pushed to GitHub Pages.
