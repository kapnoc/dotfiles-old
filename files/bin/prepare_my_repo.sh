#!/usr/bin/env sh
blih -u tanguy.gerome@epitech.eu repository create $1
blih -u tanguy.gerome@epitech.eu repository setacl $1 ramassage-tek r
blih -u tanguy.gerome@epitech.eu repository setacl $1 $2 rw
