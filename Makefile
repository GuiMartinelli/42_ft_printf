# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: guferrei <guferrei@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/07/15 07:36:42 by guferrei          #+#    #+#              #
#    Updated: 2021/07/22 14:35:19 by guferrei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

LIBFT = libft/libft.a

FT = ft_printf.c ft_printf_chr.c ft_printf_nbr.c ft_printf_utils.c

OBJ = $(FT:.c=.o)

FLAGS = -Wall -Wextra -Werror

all: $(NAME)

bonus:	$(NAME)

$(NAME):	$(OBJ) $(LIBFT)
	cp $(LIBFT) $(NAME)	
	ar rc $(NAME) $(OBJ)

$(LIBFT):
	make -C libft/

fclean:	clean
	make fclean -C libft/
	$(RM) libftprintf.a

clean:
	rm -f *.o

re:	fclean all
