#!/usr/bin/env fish


# Set ysoft projects folder
set -Ux YS_PROJECTS $HOME/workspace/ysoft
set -Ua fish_user_paths $YS_PROJECTS

alias za='python3 /Users/melkus/tools/za-toolkit/za.py'
funcsave za