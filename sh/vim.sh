##############
# vim config #
##############

install_vim()
{
	@ sudo $PKG vim vim-huge
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	# add header.vim
	@ cp files/.vimrc ~/
	@ mkdir -p ~/.vim/undodir
	echo "vim installed"
	echo
}
