# These are my dofiles
### The configs for the application includes :
1. i3
2. polybar
3. rofi
4. .bashrc
5. obsidian
6. ronema
7. kitty
8. picom
9. obsidian
10. thunar

### To install everything except non pacman applications:
```
sudo pacman -S i3 polybar rofi obsidian kitty picom obsidian thunar
```
### To install non pacman applications:
rofi-network-manager:
```
git clone --depth 1 --branch master https://github.com/P3rf/rofi-network-manager.git
cd rofi-network-manager
./setup.sh install
```

### install [Stow](#stow) :
```
sudo pacman -S stow
```
### Finally use stow to finish setting up configs
```
stow .
```
`stow .` will create symlinks for all my applications. To stow particular applications for example : `stow i3 polybar` to create symlinks for i3 and polybar only.

### Stow
GNU Stow in Linux is a symlink farm manager, primarily used for managing dotfiles (user configuration files) and software installations. It helps organize your configuration files, making it easier to switch between different system setups, especially when using multiple machines or configurations. Stow does this by creating symbolic links (symlinks) to your configuration files, allowing you to keep your "true" files in a centralized repository and easily switch between different configurations by simply running stow commands. 

In simple terms you install all of the packages and cloned this git repository then if you use `stow .` it will create symlinks of the cloned repo in your home .config directory. you are all set up the config of this repo will apply to your applications by a single command.
