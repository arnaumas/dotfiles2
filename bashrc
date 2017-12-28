#!/bin/bash

# 1. Custom Prompt
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

# 2. Aliases
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../'
alias .......='cd ../../../../../'
alias ~='cd ~'
alias ll='ls -FGAhp1'
alias lat='latexmk -pvc -pdf'
alias python='python3'
alias pip='pip3'
alias sage='/Applications/SageMath/sage -n -jupyter'
# Make MacVim the default editor
# alias mvim='mvim -v' 

# 3. Settings and Toggles
# Set bash to vi mode
set -o vi


