# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile_libft                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: enanrock <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/07/19 09:17:32 by enanrock          #+#    #+#              #
#    Updated: 2018/05/26 23:27:05 by enanrock         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME_LIBFT		:= libft.a
HERE_LIBFT		:= ./

.PHONY: all clean fclean re norme where_is_malloc

all: author .gitignore $(NAME_LIBFT)

-include libft.mk

author:
	@echo "\033[1;37m""\c"
	echo "enanrock" > author
	@echo "\033[m"

.gitignore:
	@echo "033[1;37m""\c"
	echo "*.o"              >  .gitignore
	echo "*.swp"            >> .gitignore
	echo "*_DONE"           >> .gitignore
	echo "$(NAME_LIBFT)"    >> .gitignore
	echo "$(OBJ_DIR_LIBFT)" >> .gitignore
	@echo "\033[m"

clean:
	@echo "\033[0;31m""deleted all these files and directory :""\033[m"
	@echo "\033[0;35m""\c"
	@rm -fv $(OBJ_LIBFT) | column
	@echo "\033[0;35m""\c"
	@rm -dv $(OBJ_DIR_LIBFT) | column

fclean:
	@make clean
	@echo "\033[1;35m""\c"
	@rm -fv $(NAME_LIBFT)
	@echo "\033[m""\c"

re:
	@make fclean
	@make all

norme:
	@echo "\033[1;37m""norminette on ./libft/*.c"
	@norminette $(SRC_LIBFT)                             \
		| sed ''s/Error/`echo "\033[0;31mError"`/g''     \
		| sed ''s/Warning/`echo "\033[0;33mWarning"`/g'' \
		| sed ''s/Norme/`echo "\033[1;32mNorme"`/g''
	@norminette libft.h                                  \
		| sed ''s/Error/`echo "\033[0;31mError"`/g''     \
		| sed ''s/Warning/`echo "\033[0;33mWarning"`/g'' \
		| sed ''s/Norme/`echo "\033[1;32;7mNorme"`/g''
	@echo "\033[m""\c"

where_is_malloc:
	clear
	@echo "By the way, please use ft_memdel(&ap); instead of free(ap);"
	@echo ""
	@echo "number of      file            where is it"
	@echo "allocation"
	@echo "1         : ft_memalloc.c      (result)"
	@echo ""
	@echo "1         : ft_strnew.c        (result)"
	@echo "1         : ft_strdup.c        (result)"
	@echo "1         : ft_strsub.c        (result)"
	@echo "1         : ft_strjoin.c       (result)"
	@echo "1         : ft_strnnjoin.c     (result)"
	@echo "1         : ft_strtrim.c       (result)"
	@echo "1         : ft_strmap.c        (result)"
	@echo "1         : ft_strmapi.c       (result)"
	@echo "1 + N     : ft_strsplit.c      (result & result[i])"
	@echo ""
	@echo "1         : ft_itoa.c          (result)"
	@echo "1         : ft_uitoa.c         (result)"
	@echo "1         : ft_imawtoa.c       (result)"
	@echo "1         : ft_uimawtoa_base.c (result)"
	@echo ""
	@echo "2         : ft_loopnew.c       (result & result->content)"
	@echo "2         : ft_lstnew.c        (result & result->content)"
	@echo "2         : ft_lstdupone.c     (use ft_lstnew.c)"
