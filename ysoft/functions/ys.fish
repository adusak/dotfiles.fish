function ys -d "quick cd into $YS_PROJECTS"
	switch $argv[1]
	case ''
		cd $YS_PROJECTS
	case '*'
		cd $YS_PROJECTS/$argv[1]
	end
end

function __ys_complete
	set arg (commandline -ct)
	set saved_pwd $PWD

	builtin cd $YS_PROJECTS
		and complete -C "cd $arg"

	builtin cd $saved_pwd
end

complete --command ys --arguments '(__ys_complete)'