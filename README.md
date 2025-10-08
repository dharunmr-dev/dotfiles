#### Follow below steps to properly setup these dotfiles :
First clone this repo by : 
```
git clone https://github.com/dharunmr-dev/dotfiles.git
```
reason for recursive is to clone the submodules for .oh-my-zsh `(dotfiles/ohmyzsh/.ohmyzsh/custom/plugins/)` needed plugins :

Install GNU stow : 
```
sudo apt install stow
```
###### If you don't have zsh as default shell then follow these steps :
Install zsh : 
```
sudo apt update && sudo apt install zsh -y
```
Change your default shell :
```
chsh -s $(which zsh)
```
Verify :
```
echo $SHELL
```
###### Install oh-my-zsh
Clone the repo :
```
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
```
###### Install starship, a "cross shell prompt" 
```
curl -sS https://starship.rs/install.sh | sh
```
###### Install neovim
I started using kickstart-nvim so i am going with their docs.
```
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```
###### Install fzf
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```
###### Install uv (python all in one project manager)
```
curl -LsSf https://astral.sh/uv/install.sh | sh
```
###### Install tmux
```
sudo apt install tmux
```
