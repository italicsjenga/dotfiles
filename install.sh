sudo pacman -S pkgfile zsh vim zsh-syntax-highlighting
yaourt -S bspwm-git sxhkd-git compton-git lemonbar-git
pkgfile --update

stow bspwm
stow compton
stow panel
stow sxhkd
stow vim
stow x
stow zsh
