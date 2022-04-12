function __fix_terminal_after_yarn -e fish_postexec
    echo "POST EXEC"
    if string match -q "yarn*" $argv[1]
        echo "AFTER YARN"
        tput rmkx
    end
end
