# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile_libft                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: enanrock <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/07/19 09:17:32 by enanrock          #+#    #+#              #
#    Updated: 2018/04/26 22:34:18 by enanrock         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			:= libft.a

OBJ_DIR			:= ./objs/

GNL_DIR			:= ./gnl/
MEM_DIR			:= ./mem/
STR_DIR			:= ./str/
PUT_DIR			:= ./put/
LIST_DIR		:= ./lst/
LOOP_DIR		:= ./loop/
MATH_DIR		:= ./math/
CHAR_DIR		:= ./char/
XTOY_DIR		:= ./xtoy/
OTHER_DIR		:= ./other/
TEST_STR_DIR	:= ./test_str/

GNL				:= get_next_line
GNL_SRC			:= $(addsuffix .c, $(addprefix $(GNL_DIR), $(GNL)))
GNL_OBJ			:= $(addsuffix .o, $(addprefix $(OBJ_DIR), $(GNL)))

MEM				:= bzero memset memcpy memccpy memmove memchr memcmp memalloc  \
	memdel memswap simple_del
MEM_SRC			:= $(addsuffix .c, $(addprefix $(MEM_DIR)ft_, $(MEM)))
MEM_OBJ			:= $(addsuffix .o, $(addprefix $(OBJ_DIR)ft_, $(MEM)))

STR				:= strlen strset strdup strcpy strncpy strmove strcat strncat  \
	strlcat strchr strnchr strrchr strstr strnstr strcmp strncmp strequ strnequ\
	strnew strdel strclr striter striteri strmap strmapi strsub strjoin        \
	strnnjoin strrjoin strtrim strsplit strupper strlower strdelsplit
STR_SRC			:= $(addsuffix .c, $(addprefix $(STR_DIR)ft_, $(STR)))
STR_OBJ			:= $(addsuffix .o, $(addprefix $(OBJ_DIR)ft_, $(STR)))

PUT_TXT		:= putchar putlongchar putstr putendl putnbr putunbr puthex
PUT_TXT_FD	:= $(addsuffix _fd, $(PUT_TXT))
PUT_SRC	:= $(addsuffix .c, $(addprefix $(PUT_DIR)ft_, $(PUT_TXT_FD) $(PUT_TXT)))
PUT_OBJ	:= $(addsuffix .o, $(addprefix $(OBJ_DIR)ft_, $(PUT_TXT_FD) $(PUT_TXT)))

LIST		:= lstnew lstadd lstaddend lstdelone lstdelhead lstdel lstdupone   \
	lstiter lstmap
LIST_SRC		:= $(addsuffix .c, $(addprefix $(LIST_DIR)ft_, $(LIST)))
LIST_OBJ		:= $(addsuffix .o, $(addprefix $(OBJ_DIR)ft_, $(LIST)))

LOOP			:= loopnew loopadd loopdelhead loopdel
LOOP_SRC		:= $(addsuffix .c, $(addprefix $(LOOP_DIR)ft_, $(LOOP)))
LOOP_OBJ		:= $(addsuffix .o, $(addprefix $(OBJ_DIR)ft_, $(LOOP)))

MATH			:= sqrt_uint a_power_b
MATH_SRC		:= $(addsuffix .c, $(addprefix $(MATH_DIR)ft_, $(MATH)))
MATH_OBJ		:= $(addsuffix .o, $(addprefix $(OBJ_DIR)ft_, $(MATH)))

CHAR			:= isalpha isdigit isalnum isascii isprint toupper tolower
CHAR_SRC		:= $(addsuffix .c, $(addprefix $(CHAR_DIR)ft_, $(CHAR)))
CHAR_OBJ		:= $(addsuffix .o, $(addprefix $(OBJ_DIR)ft_, $(CHAR)))

XTOY			:= itoa atoi uitoa atoui uimaxtoa_base imaxtoa
XTOY_SRC		:= $(addsuffix .c, $(addprefix $(XTOY_DIR)ft_, $(XTOY)))
XTOY_OBJ		:= $(addsuffix .o, $(addprefix $(OBJ_DIR)ft_, $(XTOY)))

OTHER			:= progress_bar
OTHER_SRC		:= $(addsuffix .c, $(addprefix $(OTHER_DIR)ft_, $(OTHER)))
OTHER_OBJ		:= $(addsuffix .o, $(addprefix $(OBJ_DIR)ft_, $(OTHER)))

TEST_STR		:= is_str_int is_str_uint
TEST_STR_SRC	:= $(addsuffix .c, $(addprefix $(TEST_STR_DIR)ft_, $(TEST_STR)))
TEST_STR_OBJ	:= $(addsuffix .o, $(addprefix $(OBJ_DIR)ft_, $(TEST_STR)))

SRC				:= $(MEM_SRC) $(STR_SRC) $(PUT_SRC) $(LIST_SRC) $(LOOP_SRC)    \
	$(CHAR_SRC) $(TEST_STR_SRC) $(XTOY_SRC) $(MATH_SRC) $(OTHER_SRC) $(GNL_SRC)
OBJ				:= $(MEM_OBJ) $(STR_OBJ) $(PUT_OBJ) $(LIST_OBJ) $(LOOP_OBJ)    \
	$(CHAR_OBJ) $(TEST_STR_OBJ) $(XTOY_OBJ) $(MATH_OBJ) $(OTHER_OBJ) $(GNL_OBJ)

DONE			:= .gnl_done .mem_done .str_done .put_done .list_done          \
	.loop_done .char_done .test_str_done  .xtoy_done .math_done .other_done

CC_FLAGS		:= -Wall -Wextra -Werror -I./ -I./$(GNL_DIR)

.PHONY: all clean fclean re norme where_is_malloc

all: author .gitignore $(NAME)

EMOJI	:= \
	🐦 🚀 🐞 🎨 🍕 🐭 👽 🔬 💀 🐷 🐼 🐶 🐸 🐧 🐳 🍔 🍣 🍻 🔮 💰 💎 💾 💜 🍪 🌞 🌍 🐌 🐓 🍄 ⚰ ☔ ☕ ☠ ⚔ ⚖ ⚗ ⚙  \
	⚜ ⚡ ⚽ ✨ ☄ ☘ ☞ ♨ ⛄ ⛏ ⛑ ⛓ ⛩ ⛪ ⛱ ✏ ⭐ 🚃 🚄 🚒 🚧 🃏 🌙 🍌 🍪 🍰 🎁 🎩 🏩 🐍 👊 👑 👯 👻 👾 💢 💣  \
	💥 📣 🔞 🔥 🔮 🔱 🚂 🚵 💶 🦄
RAND	= $$RANDOM

author:
	@echo "\033[1;37m""\c"
	echo "enanrock" > author
	@echo "\033[m"

.gitignore:
	@echo "\033[1;37m""\c"
	echo "*.o" > .gitignore
	echo "*.swp" >> .gitignore
	echo "*_DONE" >> .gitignore
	echo "$(NAME)" >> .gitignore
ifneq ($(OBJ_DIR), ./)
	echo "$(OBJ_DIR)" >> .gitignore
endif
	@echo "\033[m"

$(NAME): libft.h $(DONE)
	@ar rc $(NAME) $(OBJ)
	@echo "\033[0;34m""created   : $(NAME)""\033[m"
	@ranlib $(NAME)
	@echo "\033[1;34m""sorted    : $(NAME)""\033[m"

.gnl_done: $(GNL_OBJ)
	@echo "\033[7m" > $@
	@echo ""
	@echo "\033[0;33m""created   : gnl's objet(s)""\033[m"

.mem_done: $(MEM_OBJ)
	@echo "et" > $@
	@echo ""
	@echo "\033[0;33m""created   : memory's objet(s)""\033[m"

.str_done: $(STR_OBJ)
	@echo "au" > $@
	@echo ""
	@echo "\033[0;33m""created   : string's objet(s)""\033[m"

.put_done: $(PUT_OBJ)
	@echo "chatons" > $@
	@echo ""
	@echo "\033[0;33m""created   : put's objet(s)""\033[m"

.list_done: $(LIST_OBJ)
	@echo "mange" > $@
	@echo ""
	@echo "\033[0;33m""created   : list's objet(s)""\033[m"

.loop_done: $(LOOP_OBJ)
	@echo "des" > $@
	@echo ""
	@echo "\033[0;33m""created   : loop's objet(s)""\033[m"

.test_str_done: $(TEST_STR_OBJ)
	@echo "petit" > $@
	@echo ""
	@echo "\033[0;33m""created   : test_string's objet(s)""\033[m"

.char_done: $(CHAR_OBJ)
	@echo "Zaz" > $@
	@echo ""
	@echo "\033[0;33m""created   : char's objet(s)""\033[m"

.xtoy_done: $(XTOY_OBJ)
	@echo "déjeuner" > $@
	@echo ""
	@echo "\033[0;33m""created   : xtoy's objet(s)""\033[m"

.math_done: $(MATH_OBJ)
	@echo "chats" > $@
	@echo ""
	@echo "\033[0;33m""created   : math's objet(s)""\033[m"

.other_done: $(OTHER_OBJ)
	@echo "des" > $@
	@echo ""
	@echo "\033[0;33m""created   : other's objet(s)""\033[m"

$(OBJ_DIR)%.o: $(GNL_DIR)%.c $(GNL_DIR)/get_next_line.h
	@mkdir -p $(OBJ_DIR) 2> /tmp/a.del
	@gcc $(CC_FLAGS) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' '

$(OBJ_DIR)%.o: $(MEM_DIR)%.c libft.h
	@mkdir -p $(OBJ_DIR) 2> /tmp/a.del
	@gcc $(CC_FLAGS) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' '

$(OBJ_DIR)%.o: $(STR_DIR)%.c libft.h
	@mkdir -p $(OBJ_DIR) 2> /tmp/a.del
	@gcc $(CC_FLAGS) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' '

$(OBJ_DIR)%.o: $(PUT_DIR)%.c libft.h
	@mkdir -p $(OBJ_DIR) 2> /tmp/a.del
	@gcc $(CC_FLAGS) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' '

$(OBJ_DIR)%.o: $(LIST_DIR)%.c libft.h
	@mkdir -p $(OBJ_DIR) 2> /tmp/a.del
	@gcc $(CC_FLAGS) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' '

$(OBJ_DIR)%.o: $(LOOP_DIR)%.c libft.h
	@mkdir -p $(OBJ_DIR) 2> /tmp/a.del
	@gcc $(CC_FLAGS) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' '

$(OBJ_DIR)%.o: $(CHAR_DIR)%.c libft.h
	@mkdir -p $(OBJ_DIR) 2> /tmp/a.del
	@gcc $(CC_FLAGS) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' '

$(OBJ_DIR)%.o: $(TEST_STR_DIR)%.c libft.h
	@mkdir -p $(OBJ_DIR) 2> /tmp/a.del
	@gcc $(CC_FLAGS) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' '

$(OBJ_DIR)%.o: $(XTOY_DIR)%.c libft.h
	@mkdir -p $(OBJ_DIR) 2> /tmp/a.del
	@gcc $(CC_FLAGS) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' '

$(OBJ_DIR)%.o: $(MATH_DIR)%.c libft.h
	@mkdir -p $(OBJ_DIR) 2> /tmp/a.del
	@gcc $(CC_FLAGS) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' '

$(OBJ_DIR)%.o: $(OTHER_DIR)%.c libft.h
	@mkdir -p $(OBJ_DIR) 2> /tmp/a.del
	@gcc $(CC_FLAGS) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' '

clean:
	@echo "\033[31m""\c"
	@rm -fv a.out | column
	@echo "\033[0;35m""\c"
	@rm -fv $(OBJ) | column
	@echo "\033[7m""\c"
	@rm -fv $(DONE) | column
	@echo "\033[0;35m""\c"
ifneq ($(OBJ_DIR), ./)
	@rm -fdv $(OBJ_DIR)
endif

fclean: clean
	@echo "\033[1;35m""\c"
	@rm -fv $(NAME)
	@echo "\033[m""\c"

re: fclean all

norme:
	@echo "\033[1;37m""norminette on ./libft/*.c"
	@norminette $(SRC)                                   \
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
