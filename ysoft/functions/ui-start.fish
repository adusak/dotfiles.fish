function ui-start -d "start V3 client UI"
    launchctl bootstrap gui/(id -u) /Library/LaunchAgents/com.ysoft.safeq.client.plist
end