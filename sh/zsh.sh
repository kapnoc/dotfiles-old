##############
# zsh config #
##############

install_zsh()
{
	@ sudo $PKG zsh zsh-completions zsh-syntax-highlighting python-Pygments
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	@ git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
	# add generic zshrc
	@ sed -e "s/kapnoc/$USER/g" files/.zshrc > ~/.zshrc
	echo "zsh installed"
	echo
}
