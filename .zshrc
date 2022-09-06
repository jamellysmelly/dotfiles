# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jamalrs/.zshrc'

# Load promptinit
autoload -Uz promptinit && promptinit

# Define the theme
prompt_mytheme_setup() {
  PS1="%~%# "
}

# Add the theme to promptsys
prompt_themes+=( mytheme )

# Load the theme
prompt mytheme

PROMPT='%F{#c0c0c0}%n%f@%F{#008000}%m%f %F{#800080}%B%~%b%f %# '
RPROMPT='[%F{#0000ff}%?%f]'

alias ls='ls --color=auto'
alias ll='ls -al --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

alias emacs='emacs -nw'

alias pkg_remove='sudo pacman -Rns'
alias pkg_autoremove='sudo pacman -R $(sudo pacman -Qdttq)'
alias pkg_clean_cache='sudo pacman -Scc'

alias pkg_search='sudo pacman -Ss'
alias pkg_download='sudo pacman -Sw'
alias pkg_install='sudo pacman -S'
alias pkg_update='sudo pacman -Sy && pkg_list_updates'
alias pkg_upgrade='sudo pacman -Syyu && flatpak update && sudo grub_reinstall.sh'

alias pkg_list_all='sudo pacman -Q'
alias pkg_list_explicit='sudo pacman -Qe'
alias pkg_list_foreign='sudo pacman -Qm'
alias pkg_list_updates='sudo pacman -Qu'
alias pkg_info='sudo pacman -Qi'

alias pkg_offline_install='sudo pacman -U'
