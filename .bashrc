alias edit="vim ~/.bashrc"
alias src="source ~/.bashrc"
alias listeners="sudo netstat -ltnp"
alias cmake_debug="cmake -DCMAKE_BUILD_TYPE=Debug .."
alias m16="make -j16"
alias docker_login="cat ~/keys/gitlab-pat | docker login gitlab.yellowstone.anduril.dev:5050 -u isingletary --password-stdin"
alias m1="cmake_debug && make -j16"
alias update_chrome="sudo apt install --only-upgrade google-chrome-stable"
alias push="git add * &&  git commit -m 'testing' && git push"


alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

fzf_history_search() {
  local selected_command
  selected_command=$(history | fzf | sed 's/^[ ]*[0-9]*[ ]*//')
  READLINE_LINE=$selected_command
  READLINE_POINT=${#selected_command}
}

bind -x '"\C-r": fzf_history_search'
bind '"\C-f": "fzf\n"'
export PATH=~/bin:$PATH
