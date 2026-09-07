@echo off
cd /d "%~dp0"
if not exist .env copy .env.example .env >nul
if not exist node_modules (
  echo Installing dependencies for the first time...
  call npm install
  if errorlevel 1 (
    echo.
    echo ERROR: npm install failed. Please copy the error above and send it to ChatGPT.
    pause
    exit /b 1
  )
)
echo.
echo Starting Cyber Challenge...
echo Open http://localhost:3000 in your browser.
echo Keep this window open while using the website.
echo.
call npm start
if errorlevel 1 (
  echo.
  echo ERROR: The server stopped. Copy the error above and send it to ChatGPT.
  pause
)
