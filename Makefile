# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mlavergn <mlavergn@s19.be>                 +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/08/02 01:26:52 by mlavergn          #+#    #+#              #
#    Updated: 2024/08/03 15:36:11 by mlavergn         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	=	ft_substr.c ft_strlen.c ft_strjoin.c ft_strtrim.c ft_bzero.c ft_isalnum.c \
			ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_memset.c ft_split.c \
			ft_memcpy.c
OBJS	= ${SRCS:.c=.o}
OBJSB	= ${SRCSB:.c=.o}
NAME	= libft.a
LIBC	= ar rcs
CC		= cc
RM		= rm -f
CFLAGS	= -Wall -Wextra -Werror

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}: ${OBJS}
	${LIBC} ${NAME} ${OBJS}

all: ${NAME}

bonus: ${NAME} ${OBJSB}
	${LIBC} ${NAME} ${OBJSB}
clean:
	${RM} ${OBJS} ${OBJSB}

fclean: clean
	${RM} ${NAME} ${bonus} 

re: fclean all

.PHONY : all bonus clean fclean re