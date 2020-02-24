# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yhebbat <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/14 17:06:40 by yhebbat           #+#    #+#              #
#    Updated: 2019/10/26 14:45:26 by yhebbat          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_atoi.c ft_memccpy.c ft_strlcat.c ft_bzero.c \
	  ft_memchr.c ft_strlcpy.c ft_calloc.c ft_memcmp.c \
	  ft_strlen.c ft_isalnum.c ft_memcpy.c ft_strmapi.c \
	  ft_isalpha.c ft_memmove.c ft_strncmp.c ft_isascii.c \
	  ft_memset.c ft_strnstr.c ft_isdigit.c ft_putchar_fd.c \
	  ft_strrchr.c ft_isprint.c ft_putendl_fd.c ft_strtrim.c \
	  ft_itoa.c ft_putnbr_fd.c ft_substr.c ft_strjoin.c \
	  ft_putstr_fd.c ft_tolower.c ft_split.c ft_toupper.c \
	  ft_strchr.c ft_strdup.c

SRC_B = ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c ft_lstclear_bonus.c \
		ft_lstdelone_bonus.c ft_lstiter_bonus.c ft_lstlast_bonus.c \
		ft_lstnew_bonus.c ft_lstsize_bonus.c

OBJECT = $(SRC:.c=.o)
OBJ_B = $(SRC_B:.c=.o)

NAME = libft.a

all : $(NAME)

$(NAME):
	@gcc -Wall -Wextra -Werror -c $(SRC)
	@ar rc $(NAME) $(OBJECT)
	@ranlib $(NAME)

bonus:
	@gcc -Wall -Wextra -Werror -c $(SRC_B)
	@ar rc $(NAME) $(OBJ_B)
	@ranlib $(NAME)

clean:
	@rm -f $(OBJECT) $(OBJ_B)

fclean: clean
	@rm -f $(NAME)

re: fclean all
