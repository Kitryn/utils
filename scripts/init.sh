echo "Installing vimplug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Symlinking vimrc"
ln -sr ../dotfiles/.vimrc ~/.vimrc

echo "Symlinking tmux.conf"
ln -s ../dotfiles/.tmux.conf ~/.tmux.conf
