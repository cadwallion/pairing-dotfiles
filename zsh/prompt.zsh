autoload colors && colors

git_prompt_info () {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "(%{$fg[green]%}$(parse_git_dirty)%{$fg[blue]%})%{$reset_color%}"
}

parse_git_dirty() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $(git status -s --ignore-submodules=dirty 2> /dev/null) ]]; then
    echo "%{$fg[red]%}${ref#refs/heads/}"
  else
    echo "%{$fg[green]%}${ref#refs/heads/}"
  fi
}

directory_name(){
  echo "%{$fg_bold[cyan]%}%1/%\/%{$reset_color%}"
}

export PROMPT=$'%{$fg_bold[red]%}%m %{$fg[cyan]%}%c $(git_prompt_info) '
