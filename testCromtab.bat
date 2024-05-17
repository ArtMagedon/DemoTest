echo '* * * * * ~/./pull.bat
@reboot ~/./pull.bat
@reboot sleep 20 && python ~/Data/main.py
' | crontab
