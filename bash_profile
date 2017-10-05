#!/bin/bash

orange="$(tput setaf 1)";
bold="$(tput bold)";
reset="$(tput sgr 0)";

git_branch() {
	local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
	if [[ -n $branch ]];
		then echo "at $bold$orange$branch$reset "
	fi
}

PS1="[\[$orange$bold\] \w \[$reset\]"
PS1+="\$(git_branch)"
PS1+="]\n\[$orange$bold\] >> \[$reset\]";

export PS1;
export PS2="\[$orange$bold\] >> \[$reset\]"
