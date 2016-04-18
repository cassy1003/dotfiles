dotfiles
========

```
sudo yum -y install zsh
git clone git@github.com:cassy1003/dotfiles.git
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
ln dotfiles/vim/vimrc .vimrc
ln dotfiles/oh-my-zsh/custom/common.plugin.zsh /home/vagrant/.oh-my-zsh/custom/common.plugin.zsh
ln dotfiles/oh-my-zsh/themes/fino_cassy.zsh-theme .oh-my-zsh/themes/fino_cassy.zsh-theme
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
vim ~/.zshrc
  ZSH_THEME="fino_cassy"
```
