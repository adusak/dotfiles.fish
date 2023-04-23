#!/usr/bin/env fish
switch (uname)
case Darwin
	if command -qs brew
		brew install rbenv
	end
end

set -Ua fish_user_paths "$HOME.rbenv/shims"
set -gx RBENV_SHELL fish
command rbenv rehash 2>/dev/null
function rbenv
  set command $argv[1]
  set -e argv[1]

  switch "$command"
  case rehash shell
    rbenv "sh-$command" $argv|source
  case '*'
    command rbenv "$command" $argv
  end
end
