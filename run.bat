@echo off
title AI Teaching Program - Server Running
color 0A
echo ========================================
echo         DO NOT CLOSE THIS WINDOW
echo   Installing required dependencies...
echo ========================================
echo  
color 7
pip install flask google-generativeai python-dotenv markdown Pillow requests
color 0A
echo  
echo =========================================
echo         DO NOT CLOSE THIS WINDOW
echo  The server is running on localhost:5000
echo =========================================

start http://localhost:5000/login

python app.py

if %errorlevel% neq 0 (
    echo An error occurred while running the server.
    echo Error code: %errorlevel%
    pause
    exit /b %errorlevel%
)

pause
