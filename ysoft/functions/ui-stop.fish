function ui-stop -d "stop V3 client UI"
    launchctl bootout gui/(id -u) /Library/LaunchAgents/com.ysoft.safeq.client.plist
end
