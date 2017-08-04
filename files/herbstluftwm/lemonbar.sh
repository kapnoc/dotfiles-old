#! /usr/bin/env sh


aled() 
{

	workspaces()
	{
		RES=$(herbstclient tag_status $monitor)
		RES=$(echo -n "$RES" | grep -oe "[\:\.\!\#\*][0-9]" | tr '\n' '|')
		echo -n "$RES"
	}

	clock()
	{
		DATETIME=$(date "+%a %b %d, %T")
		echo -n "$DATETIME"
	}

	bat()
	{
		BAT="cat /sys/class/power_supply/BAT0/capacity"
		echo -n "$($BAT)"
	}

	while true; do
		echo -n "%{c}%{F#8F9F00}%{B#202020} $(workspaces)  "
		echo -n "$(clock) | Bat: $(bat)% %{F-}%{B-}\n"
		sleep 1
	done

}

aled | lemonbar -g +00+04 -p | sh
