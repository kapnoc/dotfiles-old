##############
# vim config #
##############

install_vim()
{
	@ sudo $PKG vim vim-huge neovim neovim-qt
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	# add header.vim
	@ cp files/.vimrc ~/
	@ mkdir -p ~/.vim/undodir
	ln -s ~/.vim ~/.config/nvim
	ln -s ~/.vimrc ~/.config/nvim/init.vim
	echo "vim installed"
	echo
}
