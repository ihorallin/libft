# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ichebota <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/12/14 18:10:25 by ichebota          #+#    #+#              #
#    Updated: 2017/08/19 17:52:41 by ichebota         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
HEADER = libft.h
SRC = ft_atoi_base.c ft_power.c ft_free.c creatint.c ft_printmas.c ft_fact.c ft_strnlen.c ft_numwords.c ft_sqrt.c ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_lstadd.c ft_lstdel.c ft_lstdelone.c ft_lstiter.c ft_lstmap.c ft_lstnew.c ft_memalloc.c ft_memccpy.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memdel.c ft_memmove.c ft_memset.c ft_putchar.c ft_putchar_fd.c ft_putendl.c ft_putendl_fd.c ft_putnbr.c ft_putnbr_fd.c ft_putstr.c ft_putstr_fd.c ft_strcat.c ft_strchr.c ft_strclr.c ft_strcmp.c ft_strcpy.c ft_strdel.c ft_strdup.c ft_strequ.c ft_striter.c ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlen.c ft_strmap.c ft_strmapi.c ft_strncat.c ft_strncmp.c ft_strncpy.c ft_strnequ.c ft_strnew.c ft_strnstr.c ft_strrchr.c ft_strsplit.c ft_strstr.c ft_strsub.c ft_strtrim.c ft_tolower.c ft_toupper.c
OBJ = $(SRC:.c=.o)
CFLAGS = -Wall -Wextra -Werror -c -g
CC = gcc

all: $(NAME)

$(NAME): $(OBJ)
	@$(CC) $(CFLAGS) $(SRC)
	@ar rc $(NAME) $(OBJ)
.c.o:
	$(CC) $(CFLAGS) $<

clean:
	@rm -f $(OBJ)
fclean:
	make clean
	@rm -f $(NAME)
re:
	make fclean 
	make all
	@ar rc $(NAME) $(OBJ)
