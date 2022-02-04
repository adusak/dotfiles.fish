function spooler-stop -d "stop spooler"
    sudo launchctl bootout system /Library/LaunchDaemons/com.ysoft.safeq.spooler.plist
end