function spooler-uninstall -d "stop spooler"
    pushd "/Library/Application Support/YSoft.Spooler"
    if test -f uninstall.rb
        echo "Trying to uninstall Spooler"
        sudo ./uninstall.rb --force or success #silent uninstall
    else 
        echo "Spooler was not installed"
    end
    popd
end