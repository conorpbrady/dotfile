# dotfiles

Vim and Tmux config files synced across machines through git. Use symbolic links to link files to their usual location on the local machine.

### Quick and dirty setup
Link vim configs

`~ ln -s dotfiles/.vim .vim`
`~ ln -s dotfiles/.vimrc .vimrc`

Install vim-plug

`curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

Open vim, then `:PlugInstall`


Install Brew

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

Install tmux

`brew install tmux`

Link tmux configs

`~ ln -s dotfiles/tmux/.tmux .tmux`
`~ ln -s dotfiles/tmux/.tmux.conf .tmux.conf`

Install tmux PLugin Manager

`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

If in tmux, reload

`tmux source ~/.tmux.conf`

Launch tmux, install plugins

`prefix + I`
`prefix + U`
