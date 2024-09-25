@echo off

:: Default value for time argument
set time_arg=Past 24 hours
if not "%1"=="" set time_arg=%1

:: Loop through the three positions
for %%P in ("Data Analyst" "Business Intelligence" "Data Engineer") do (
    echo Running script for "%%P" with time argument "%time_arg%"
    py scrap_wuzzef.py --position=%%P --time="%time_arg%"
)
