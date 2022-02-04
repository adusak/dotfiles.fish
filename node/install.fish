#!/usr/bin/env fish

function __fix_terminal_after_yarn -e fish_postexec
    if string match -q "yarn *" $argv[1]
        tput rmkx
    end
end
