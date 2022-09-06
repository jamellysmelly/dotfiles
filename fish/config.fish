if status is-interactive
    # Commands to run in interactive sessions can go here

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
	alias pkg_install='sudo pacman -Syu'
	alias pkg_upgrade='sudo pacman -Syyu'
	alias pkg_list_all='sudo pacman -Q'
	alias pkg_list_explicit='sudo pacman -Qe'
	alias pkg_list_foreign='sudo pacman -Qm'
	alias pkg_info='sudo pacman -Qi'
	
	alias pkg_offline_install='sudo pacman -U'

end


