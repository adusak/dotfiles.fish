#!/usr/bin/env fish
set -Ux EDITOR vim
set -Ux VISUAL $EDITOR
set -Ux WEDITOR code

set -Ux DOTFILES ~/.dotfiles
set -Ux PROJECTS ~/Workspace
set -Ux WORK ~/Workspace/ysoft

set -Ua fish_user_paths $DOTFILES/bin $HOME/.bin

for f in $DOTFILES/*/functions
	if not contains $f $fish_function_path
		set -Up fish_function_path $f
	end
end

for f in $DOTFILES/*/conf.d/*.fish
	ln -sf $f ~/.config/fish/conf.d/(basename $f)
end

if test -f ~/.localrc.fish
	ln -sf ~/.localrc.fish ~/.config/fish/conf.d/localrc.fish
end
