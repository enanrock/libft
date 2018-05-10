# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    libft.mk                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: enanrock <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/07/19 09:17:32 by enanrock          #+#    #+#              #
#    Updated: 2018/05/10 17:49:01 by enanrock         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME_LIBFT		:= $(addprefix $(HERE_LIBFT), $(NAME_LIBFT))

OBJ_DIR_LIBFT	:= $(addprefix $(HERE_LIBFT), objects/)
OBJS_DIR		+= $(OBJ_DIR_LIBFT)

GNL_DIR			:= $(addprefix $(HERE_LIBFT), gnl/)
MEM_DIR			:= $(addprefix $(HERE_LIBFT), mem/)
STR_DIR			:= $(addprefix $(HERE_LIBFT), str/)
PUT_DIR			:= $(addprefix $(HERE_LIBFT), put/)
LIST_DIR		:= $(addprefix $(HERE_LIBFT), lst/)
LOOP_DIR		:= $(addprefix $(HERE_LIBFT), loop/)
MATH_DIR		:= $(addprefix $(HERE_LIBFT), math/)
CHAR_DIR		:= $(addprefix $(HERE_LIBFT), char/)
XTOY_DIR		:= $(addprefix $(HERE_LIBFT), xtoy/)
OTHER_DIR		:= $(addprefix $(HERE_LIBFT), other/)
TEST_STR_DIR	:= $(addprefix $(HERE_LIBFT), test_str/)

SRCS_DIR			+= $(GNL_DIR) $(MEM_DIR) $(STR_DIR) $(PUT_DIR) $(LIST_DIR) \
						$(LOOP_DIR) $(MATH_DIR) $(CHAR_DIR) $(XTOY_DIR)        \
						$(OTHER_DIR) $(TEST_STR_DIR)

GNL				:= get_next_line
GNL_SRC			:= $(addsuffix .c, $(addprefix $(GNL_DIR), $(GNL)))
GNL_OBJ			:= $(addsuffix .o, $(addprefix $(OBJ_DIR_LIBFT), $(GNL)))

MEM				:= bzero memset memcpy memccpy memmove memchr memcmp memalloc  \
	memdel memswap simple_del
MEM_SRC			:= $(addsuffix .c, $(addprefix $(MEM_DIR)ft_, $(MEM)))
MEM_OBJ			:= $(addsuffix .o, $(addprefix $(OBJ_DIR_LIBFT)ft_, $(MEM)))

STR				:= strlen strset strdup strcpy strncpy strmove strcat strncat  \
	strlcat strchr strnchr strrchr strstr strnstr strcmp strncmp strequ strnequ\
	strnew strdel strclr striter striteri strmap strmapi strsub strjoin        \
	strnnjoin strrjoin strtrim strsplit strupper strlower strdelsplit
STR_SRC			:= $(addsuffix .c, $(addprefix $(STR_DIR)ft_, $(STR)))
STR_OBJ			:= $(addsuffix .o, $(addprefix $(OBJ_DIR_LIBFT)ft_, $(STR)))

PUT_TXT		:= putchar putlongchar putstr putendl putnbr putunbr puthex
PUT_TXT_FD	:= $(addsuffix _fd, $(PUT_TXT))
PUT_SRC	:= $(addsuffix .c, $(addprefix $(PUT_DIR)ft_, $(PUT_TXT_FD) $(PUT_TXT)))
PUT_OBJ	:= $(addsuffix .o, $(addprefix $(OBJ_DIR_LIBFT)ft_, $(PUT_TXT_FD) $(PUT_TXT)))

LIST		:= lstnew lstadd lstaddend lstdelone lstdelhead lstdel lstdupone   \
	lstiter lstmap
LIST_SRC		:= $(addsuffix .c, $(addprefix $(LIST_DIR)ft_, $(LIST)))
LIST_OBJ		:= $(addsuffix .o, $(addprefix $(OBJ_DIR_LIBFT)ft_, $(LIST)))

LOOP			:= loopnew loopadd loopdelhead loopdel
LOOP_SRC		:= $(addsuffix .c, $(addprefix $(LOOP_DIR)ft_, $(LOOP)))
LOOP_OBJ		:= $(addsuffix .o, $(addprefix $(OBJ_DIR_LIBFT)ft_, $(LOOP)))

MATH			:= sqrt_uint a_power_b
MATH_SRC		:= $(addsuffix .c, $(addprefix $(MATH_DIR)ft_, $(MATH)))
MATH_OBJ		:= $(addsuffix .o, $(addprefix $(OBJ_DIR_LIBFT)ft_, $(MATH)))

CHAR			:= isalpha isdigit isalnum isascii isprint toupper tolower
CHAR_SRC		:= $(addsuffix .c, $(addprefix $(CHAR_DIR)ft_, $(CHAR)))
CHAR_OBJ		:= $(addsuffix .o, $(addprefix $(OBJ_DIR_LIBFT)ft_, $(CHAR)))

XTOY			:= itoa atoi uitoa atoui uimaxtoa_base imaxtoa
XTOY_SRC		:= $(addsuffix .c, $(addprefix $(XTOY_DIR)ft_, $(XTOY)))
XTOY_OBJ		:= $(addsuffix .o, $(addprefix $(OBJ_DIR_LIBFT)ft_, $(XTOY)))

OTHER			:= progress_bar
OTHER_SRC		:= $(addsuffix .c, $(addprefix $(OTHER_DIR)ft_, $(OTHER)))
OTHER_OBJ		:= $(addsuffix .o, $(addprefix $(OBJ_DIR_LIBFT)ft_, $(OTHER)))

TEST_STR		:= is_str_int is_str_uint
TEST_STR_SRC	:= $(addsuffix .c, $(addprefix $(TEST_STR_DIR)ft_, $(TEST_STR)))
TEST_STR_OBJ	:= $(addsuffix .o, $(addprefix $(OBJ_DIR_LIBFT)ft_, $(TEST_STR)))

SRC_LIBFT		:= $(GNL_SRCJ) $(MEM_SRC) $(STR_SRC) $(PUT_SRC) $(LIST_SRC)     \
	$(LOOP_SRC) $(MATH_SRC) $(CHAR_SRC) $(XTOY_SRC) $(OTHER_SRC) $(TEST_STR_SRC)
OBJ_LIBFT		:= $(GNL_OBJ) $(MEM_OBJ) $(STR_OBJ) $(PUT_OBJ) $(LIST_OBJ)     \
	$(LOOP_OBJ) $(MATH_OBJ) $(CHAR_OBJ) $(XTOY_OBJ) $(OTHER_OBJ) $(TEST_STR_OBJ)

OBJS			+= $(OBJ_LIBFT)

DONE			:= .gnl_done .mem_done .str_done .put_done .list_done          \
	.loop_done .char_done .test_str_done  .xtoy_done .math_done .other_done

CC_FLAGS_LIBFT		:= -Wall -Wextra -Werror                                   \
	-I$(HERE_LIBFT) -I$(addprefix $(HERE_LIBFT), $(GNL_DIR))

HDRS_DIR			+= $(HERE_LIBFT)libft.h

EMOJI	:= 🐦 🚀 🐞 🎨 \
	🍕 🐭 👽 🔬 💀 🐷 🐼 🐶 🐸 🐧 \
	🐳 🍔 🍣 🍻 🔮 💰 💎 💾 💜 🍪 \
	🌞 🌍 🐌 🐓 🍄 ⚰ ☔ ☕ ☠ ⚔ \
	⚖ ⚗ ⚙ ⚜ ⚡ ⚽ ✨ ☄ ☘ ☞ \
	♨ ⛄ ⛏ ⛑ ⛓ ⛩ ⛪ ⛱ ✏ ⭐ \
	🚃 🚄 🚒 🚧 🃏 🌙 🍌 🍪 🍰 🎁 \
	🎩 🏩 🐍 👊 👑 👯 👻 👾 💢 💣 \
	💥 📣 🔞 🔥 🔮 🔱 🚂 🚵 💶 🦄
RAND	= $$RANDOM

$(NAME_LIBFT): $(addpreffix $(HERE_LIBFT) libft.h) $(DONE)
	@ar rc $(NAME_LIBFT) $(OBJ_LIBFT)
	@echo "created : ""\033[0;34m""$(NAME_LIBFT)""\033[m"
	@ranlib $(NAME_LIBFT)
	@echo "sorted  : ""\033[1;34m""$(NAME_LIBFT)""\033[m"

.gnl_done: $(GNL_OBJ)
	@echo "\033[7m" > $@
	@echo ""
	@echo "created : ""\033[0;33m""gnl's         objet(s)""\033[m"

.mem_done: $(MEM_OBJ)
	@echo "et" > $@
	@echo ""
	@echo "created : ""\033[0;33m""memory's      objet(s)""\033[m"

.str_done: $(STR_OBJ)
	@echo "au" > $@
	@echo ""
	@echo "created : ""\033[0;33m""string's      objet(s)""\033[m"

.put_done: $(PUT_OBJ)
	@echo "chatons" > $@
	@echo ""
	@echo "created : ""\033[0;33m""put's         objet(s)""\033[m"

.list_done: $(LIST_OBJ)
	@echo "mange" > $@
	@echo ""
	@echo "created : ""\033[0;33m""list's        objet(s)""\033[m"

.loop_done: $(LOOP_OBJ)
	@echo "des" > $@
	@echo ""
	@echo "created : ""\033[0;33m""loop's        objet(s)""\033[m"

.test_str_done: $(TEST_STR_OBJ)
	@echo "petit" > $@
	@echo ""
	@echo "created : ""\033[0;33m""test_string's objet(s)""\033[m"

.char_done: $(CHAR_OBJ)
	@echo "Zaz" > $@
	@echo ""
	@echo "created : ""\033[0;33m""char's        objet(s)""\033[m"

.xtoy_done: $(XTOY_OBJ)
	@echo "déjeuner" > $@
	@echo ""
	@echo "created : ""\033[0;33m""xtoy's        objet(s)""\033[m"

.math_done: $(MATH_OBJ)
	@echo "chats" > $@
	@echo ""
	@echo "created : ""\033[0;33m""math's objet(s)""\033[m"

.other_done: $(OTHER_OBJ)
	@echo "des" > $@
	@echo ""
	@echo "created : ""\033[0;33m""other's objet(s)""\033[m"

$(OBJ_DIR_LIBFT)%.o: $(GNL_DIR)%.c $(GNL_DIR)/get_next_line.h
	@mkdir -p $(OBJ_DIR_LIBFT) 2> /tmp/a.del
	@gcc $(CC_FLAGS_LIBFT) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' ' | sed 's/%/%/g' | tr '\n' ' '

$(OBJ_DIR_LIBFT)%.o: $(MEM_DIR)%.c $(addpreffix $(HERE_LIBFT) libft.h)
	@mkdir -p $(OBJ_DIR_LIBFT) 2> /tmp/a.del
	@gcc $(CC_FLAGS_LIBFT) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' ' | sed 's/%/%/g' | tr '\n' ' '

$(OBJ_DIR_LIBFT)%.o: $(STR_DIR)%.c $(addpreffix $(HERE_LIBFT) libft.h)
	@mkdir -p $(OBJ_DIR_LIBFT) 2> /tmp/a.del
	@gcc $(CC_FLAGS_LIBFT) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' ' | sed 's/%/%/g' | tr '\n' ' '

$(OBJ_DIR_LIBFT)%.o: $(PUT_DIR)%.c $(addpreffix $(HERE_LIBFT) libft.h)
	@mkdir -p $(OBJ_DIR_LIBFT) 2> /tmp/a.del
	@gcc $(CC_FLAGS_LIBFT) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' ' | sed 's/%/%/g' | tr '\n' ' '

$(OBJ_DIR_LIBFT)%.o: $(LIST_DIR)%.c $(addpreffix $(HERE_LIBFT) libft.h)
	@mkdir -p $(OBJ_DIR_LIBFT) 2> /tmp/a.del
	@gcc $(CC_FLAGS_LIBFT) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' ' | sed 's/%/%/g' | tr '\n' ' '

$(OBJ_DIR_LIBFT)%.o: $(LOOP_DIR)%.c $(addpreffix $(HERE_LIBFT) libft.h)
	@mkdir -p $(OBJ_DIR_LIBFT) 2> /tmp/a.del
	@gcc $(CC_FLAGS_LIBFT) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' ' | sed 's/%/%/g' | tr '\n' ' '

$(OBJ_DIR_LIBFT)%.o: $(CHAR_DIR)%.c $(addpreffix $(HERE_LIBFT) libft.h)
	@mkdir -p $(OBJ_DIR_LIBFT) 2> /tmp/a.del
	@gcc $(CC_FLAGS_LIBFT) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' ' | sed 's/%/%/g' | tr '\n' ' '

$(OBJ_DIR_LIBFT)%.o: $(TEST_STR_DIR)%.c $(addpreffix $(HERE_LIBFT) libft.h)
	@mkdir -p $(OBJ_DIR_LIBFT) 2> /tmp/a.del
	@gcc $(CC_FLAGS_LIBFT) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' ' | sed 's/%/%/g' | tr '\n' ' '

$(OBJ_DIR_LIBFT)%.o: $(XTOY_DIR)%.c $(addpreffix $(HERE_LIBFT) libft.h)
	@mkdir -p $(OBJ_DIR_LIBFT) 2> /tmp/a.del
	@gcc $(CC_FLAGS_LIBFT) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' ' | sed 's/%/%/g' | tr '\n' ' '

$(OBJ_DIR_LIBFT)%.o: $(MATH_DIR)%.c $(addpreffix $(HERE_LIBFT) libft.h)
	@mkdir -p $(OBJ_DIR_LIBFT) 2> /tmp/a.del
	@gcc $(CC_FLAGS_LIBFT) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' ' | sed 's/%/%/g' | tr '\n' ' '

$(OBJ_DIR_LIBFT)%.o: $(OTHER_DIR)%.c $(addpreffix $(HERE_LIBFT) libft.h)
	@mkdir -p $(OBJ_DIR_LIBFT) 2> /tmp/a.del
	@gcc $(CC_FLAGS_LIBFT) -o $@ -c $<
	@echo "$(EMOJI)" | cut -f $(shell echo $(RAND) % 84 + 1 | bc) -d ' '       \
		| tr '\n' ' ' | sed 's/%/%/g' | tr '\n' ' '
