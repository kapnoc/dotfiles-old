#!/bin/sh
## aled-Makefile.sh for ALED in /home/tanguy
## 
## Made by Tanguy GEROME 
## Login   <tanguy.gerome@epitech.eu>
## 
## Started on  Sun Jan 15 19:25:20 2017 
## Last update Sun Jan 15 19:25:47 2017 
##

touch "$1"

ALED="`echo "$1" | tr '[:lower:]' '[:upper:]' | tr '.' '_'`_"

echo "#ifndef $ALED" >> "$1"
echo "#define $ALED" >> "$1"
echo >> "$1"
echo >> "$1"
echo "#endif /* !$ALED */" >> "$1"

mv "$1" "inc/$1"
