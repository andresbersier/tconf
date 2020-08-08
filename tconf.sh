sudo apt update
sudo apt install curl
sudo apt install git
sudo apt install vim
sudo apt install neovim
sudo apt install exuberant-ctags
sudo apt install cscope
sudo apt install cmake
cp vim/vimrc ~/.vimrc
mkdir ~/.config/nvim
cp vim/init.vim ~/.config/nvim/
mv ~/.config/nvim/plug.vim ~/.config/nvim/autoload/plug.vim
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
nvim -E -s -u "~/.vimrc" +PlugInstall +qall
nvim -E -s -u "~/.vimrc" +PluginInstall +qall

sudo apt install fortune
sudo apt install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/chrissicool/zsh-256color ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-256color
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cp zsh/zshrc ~/.zshrc
cp zsh/p10k.zsh ~/.p10k.zsh
mkdir .local/share/fonts
cp fonts/* .local/share/fonts
fc-cache -f -v

sudo apt install silversearcher-ag
