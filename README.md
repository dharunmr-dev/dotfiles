# Dharun's dotfiles
welcome to my dotfile repository

### Applications Configured

1. Aerospace – Tiling window manager (only for macOS)
2. Neovim – IDE / text editor
3. Kitty – Terminal emulator 
4. Starship – Cross-shell prompt
5. Tmux – Terminal multiplexer
6. Oh My Zsh – Zsh framework
7. GnuPG – Cryptographic security
8. Bat – Cat clone with syntax highlighting
9. Custom Zsh plugins

### Installation : 
```
https://github.com/dharunmr-dev/dotfiles.git
```

### Requirements :
> [!NOTE]
> Use a package manager suitable for your OS.

I use zsh as my shell.
check if you have zsh `cat /etc/shells` if you don't have install it!
To change default login shell to zsh :
```
chsh -s $(which zsh)
```
Install **GNU `stow`** which is our dotfile manager which helps to apply my dotfiles to your machine

#### Setting up Neovim :
> [!NOTE]
> I use kickstart nvim

make sure to install `make gcc ripgrep unzip git xclip neovim`

Install kickstart.nvim
```
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

You can install required Applications that I've mentioned above.

### Final steps 
To use my dotfiles, use stow to create symlink : 
```
cd dotfiles
```
Stow usage : 
`stow nvim`
