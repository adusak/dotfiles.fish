function spooler-start -d "start spooler"
    sudo launchctl bootstrap system /Library/LaunchDaemons/com.ysoft.safeq.spooler.plist
end
