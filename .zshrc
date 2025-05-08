code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}


BLUE="%F{4}"
CYAN="%F{6}"
WHITE="%F{7}"
RESET="%f"

git_branch() {
  local branch
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  [[ -n "$branch" ]] && echo "(${CYAN}${branch}${RESET})"
}

PROMPT='${BLUE}%n@%m ${WHITE}%~ $(git_branch)${RESET}
> '

autoload -Uz add-zsh-hook
precmd() { PROMPT="${BLUE}%n@%m ${WHITE}%~ $(git_branch)${RESET}
> " }


alias ls='ls --color -1'


HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000000
SAVEHIST=1000000
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY

