##############
# zsh config #
##############

install_zsh()
{
	@ sudo $PKG zsh zsh-completions zsh-syntax-highlighting
	@ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	@ git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
	# add generic zshrc
	@ cp files/.zshrc ~/
	echo "zsh installed"
	echo
}
