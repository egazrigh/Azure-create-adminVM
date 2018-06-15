REM Must be copied in PATH %SystemRoot%\OEM\SetupComplete2.cmd
echo "Running SetupComplete2" > C:\SetupComplete2.log
"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass %SystemRoot%\OEM\SetupComplete2.ps1
