# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: marvin <marvin@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/31 18:09:50 by marvin            #+#    #+#              #
#    Updated: 2024/01/20 20:07:14 by marvin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_printf.c \
	utils.c \
	print_num.c \
	libft/ft_strchr.c \
	libft/ft_strlen.c \
	libft/ft_strncmp.c \
	libft/ft_strnstr.c
OBJS = ${SRC:.c=.o}
NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
RM = rm -f

all : $(NAME)

$(NAME) : $(OBJS)
	ar rc $(NAME) $(OBJS)
	
%.o : %.c
	$(CC) $(CFLAGS) -c $< -o ${<:.c=.o}

clean :
	$(RM) $(OBJS)
	
fclean : clean
	$(RM) $(NAME)
	
re : fclean all
