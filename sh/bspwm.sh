######################
# bspwm/sxhkd config #
######################

install_bspwm()
{
	@ sudo $PKG bspwm sxhkd compton polybar redshift xsetroot
	@ cp files/bspwm ~/.config -r
	@ cp files/sxhkd ~/.config -r
	@ cp files/polybar ~/.config -r
	@ cp files/compton.conf ~/.config
	echo "bspwm & sxhkd installed"
	echo
}
