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
	echo "vim installed"
	echo
}
