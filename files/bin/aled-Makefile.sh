#!/bin/sh
## aled-Makefile.sh for ALED in /home/tanguy
##
## Made by Tanguy GEROME
## Login   <tanguy.gerome@epitech.eu>
##
## Started on  Sun Jan 15 19:25:20 2017
## Last update Sun Jan 15 19:25:47 2017
##

touch Makefile

echo "NAME	=	$1" >> Makefile

echo '
PREFIX	?=	/usr/local
SRCDIR	=	src
OBJDIR	=	obj
DIRS	=	$(OBJDIR)

SRCS	=	src/main.c

CC	=	gcc
MKDIR	=	mkdir -p
RM	=	rm -f

$(OBJDIR)/%.o: $(SRCDIR)/%.c | $(DIRS)
	$(CC) $(CFLAGS) -c $< -o $@

OBJS	=	$(patsubst $(SRCDIR)/%.c, $(OBJDIR)/%.o, $(SRCS))

CFLAGS	=	-Iinc -Wall -Wextra #-Werror

LDFLAGS	=	-Llib -lmy

all:	$(NAME)

$(OBJDIR):
	$(MKDIR) $@

$(NAME): $(OBJS)
	$(CC) $(OBJS) -o $(NAME) $(LDFLAGS)

clean:
	$(RM) $(OBJS)

fclean:	clean
	$(RM) $(NAME)

install: all
	cp $(NAME) "$(PREFIX)/bin"

re:	fclean all

.PHONY:	all clean fclean re\n' >> Makefile

