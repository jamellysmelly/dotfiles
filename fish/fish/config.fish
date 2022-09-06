if status is-interactive
    # Commands to run in interactive sessions can go here

	alias ls='ls --color=auto'
	alias ll='ls -al --color=auto'
	alias grep='grep --colour=auto'
	alias egrep='egrep --colour=auto'
	alias fgrep='fgrep --colour=auto'

	alias emacs='emacs -nw'
	
	alias remove='yay -Rns'
	alias autoremove='yay -R $(yay -Qdttq)'
	alias install='yay -S'
	alias search='yay -Ss'
	alias update='yay -Syyu'
	alias list_all='yay -Q'
	alias list_explicit='yay -Qe'
	alias list_foreign='yay -Qm'
	alias info='yay -Qi'

end
