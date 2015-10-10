sudo pacman -S pkgfile zsh vim zsh-syntax-highlighting wmname
yaourt -S bspwm-git sxhkd-git compton-git lemonbar-git xtitle sutils
pkgfile --update

stow bspwm
stow compton
stow panel
stow sxhkd
stow vim
stow x
stow zsh
