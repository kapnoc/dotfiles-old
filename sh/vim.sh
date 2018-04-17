##############
# vim config #
##############

install_vim()
{
	@ sudo $PKG neovim neovim-qt
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	@ cp files/.vimrc ~/
	@ mkdir -p ~/.vim/undodir
	ln -s ~/.vim ~/.config/nvim
	ln -s ~/.vimrc ~/.config/nvim/init.vim
	cp files/ginit.vim ~/.config/nvim/ginit.vim
	echo "vim installed"
	echo
}
