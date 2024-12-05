################################################################################
# FILES ########################################################################
################################################################################

NAME	:=	libft.a
MFILE	:=	Makefile

################################################################################
# HEADERS ######################################################################
################################################################################

SUBHDRS	:=	fd/ft_fd.h is/ft_is.h lst/ft_lst.h mem/ft_mem.h str/ft_str.h	\
			to/ft_to.h
HDRS	:=	libft.h

################################################################################
# SOURCES ######################################################################
################################################################################

SRCFD	:=	ft_putchar_fd ft_putendl_fd ft_putnbr_fd ft_putstr_fd
SRCIS	:=	ft_isalnum ft_isalpha ft_isascii ft_isdigit ft_isprint
SRCLST	:=	ft_lstadd_back ft_lstadd_front ft_lstclear ft_lstdelone			\
			ft_lstiter ft_lstlast ft_lstmap ft_lstnew ft_lstsize
SRCMEM	:=	ft_bzero ft_calloc ft_memchr ft_memcmp ft_memcpy ft_memmove		\
			ft_memset
SRCSTR	:=	ft_split ft_strchr ft_strdup ft_striteri ft_strjoin ft_strlcat	\
			ft_strlcpy ft_strlen ft_strmapi ft_strncmp ft_strnstr			\
			ft_strrchr ft_strtrim ft_substr
SRCTO	:=	ft_atoi ft_itoa ft_tolower ft_toupper
SRCALL	:=	$(addprefix fd/, $(SRCFD)) $(addprefix is/, $(SRCIS))			\
			$(addprefix lst/, $(SRCLST)) $(addprefix mem/, $(SRCMEM))		\
			$(addprefix str/, $(SRCSTR)) $(addprefix to/, $(SRCTO))
SRC		:=	$(addsuffix .c, $(SRCALL))

################################################################################
# OBJECTS ######################################################################
################################################################################

OBJDIR	:=	obj
OBJS	:=	$(addsuffix .o, $(SRCALL))
OBJ		:=	$(addprefix $(OBJDIR)/, $(OBJS))

################################################################################
# COMMANDS AND FLAGS ###########################################################
################################################################################

CC		:=	cc
CFLAGS	:=	-Wall -Wextra -Werror
AR		:=	ar
ARFLAGS	:=	rcs
RM		:=	rm
RMFLAGS	:=	-rf

################################################################################
# VARIABLES ####################################################################
################################################################################

# Style
_END		:=	\033[0;0m
_BOLD		:=	\033[0;1m
_UNDER		:=	\033[0;4m
_REV		:=	\033[0;7m

# Colors
_ERASE		:=	\033[2K\r
_GREY		:=	\033[0;30m
_RED		:=	\033[0;31m
_GREEN		:=	\033[0;32m
_YELLOW		:=	\033[0;33m
_BLUE		:=	\033[0;34m
_PURPLE		:=	\033[0;35m
_CYAN		:=	\033[0;36m
_WHITE		:=	\033[0;37m

# Background
_IGREY		:=	\033[0;40m
_IRED		:=	\033[0;41m
_IGREEN		:=	\033[0;42m
_IYELLOW	:=	\033[0;43m
_IBLUE		:=	\033[0;44m
_IPURPLE	:=	\033[0;45m
_ICYAN		:=	\033[0;46m
_IWHITE		:=	\033[0;47m

PIKA0	:=	⣿⣿⣿⣿⣿⡏⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿
PIKA1	:=	⣿⣿⣿⣿⣿⣿⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠁⠀⣿
PIKA2	:=	⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠙⠿⠿⠿⠻⠿⠿⠟⠿⠛⠉⠀⠀⠀⠀⠀⣸⣿
PIKA3	:=	⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿
PIKA4	:=	⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣴⣿⣿⣿⣿
PIKA5	:=	⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⢰⣹⡆⠀⠀⠀⠀⠀⠀⣭⣷⠀⠀⠀⠸⣿⣿⣿⣿
PIKA6	:=	⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠈⠉⠀⠀⠤⠄⠀⠀⠀⠉⠁⠀⠀⠀⠀⢿⣿⣿⣿
PIKA7	:=	⣿⣿⣿⣿⣿⣿⣿⣿⢾⣿⣷⠀⠀⠀⠀⡠⠤⢄⠀⠀⠀⠠⣿⣿⣷⠀⢸⣿⣿⣿
PIKA8	:=	⣿⣿⣿⣿⣿⣿⣿⣿⡀⠉⠀⠀⠀⠀⠀⢄⠀⢀⠀⠀⠀⠀⠉⠉⠁⠀⠀⣿⣿⣿
PIKA9	:=	⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿
PIKA10	:=	⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿

NORM	:=	$(shell norminette | grep -c 'Error!')

ifeq ($(NORM), 0)
	NORM_RET = "[DONE] Norminette."
else
	NORM_RET = "[ERROR] Norminette."
endif

TOTAL_FILES		:=	$(words $(SRCALL))
COMPILED_FILES	:=	0
PERCENT			:=	0
BAR_WIDTH		:=	30

REPEAT_CHAR		=	$(if $(filter-out 0,$2),$(shell seq 1 $2 | xargs -I@ printf "$1"),)

################################################################################
# RULES ########################################################################
################################################################################

all: 			print_message $(NAME)

$(NAME): 		$(OBJ)
				@$(AR) $(ARFLAGS) $(NAME) $(OBJ)
				@printf "${_ERASE}  | ${_CYAN}[$(call REPEAT_CHAR,⣿,$(BAR_WIDTH))$(call REPEAT_CHAR, ,0)]${_END} ${_WHITE}${PERCENT}%%${_END} ${_GREY}ϟ Compiled.${_END}"
				@echo ""
				@if [ $(NORM) -eq 0 ]; then\
					echo "  | $(_GREEN)$(NORM_RET)$(_END)";\
				else\
					echo "  | $(_RED)$(NORM_RET)$(_END)";\
				fi
				@echo ""
				@echo "$(_BOLD)$(_GREEN)  ╔═══════════════════════════════════════╗$(_END)"
				@echo "$(_BOLD)$(_GREEN)  ║ Library $(_END)${_UNDER}$@$(_END) $(_GREEN)created successfully! ║$(_END)"
				@echo "$(_BOLD)$(_GREEN)  ║                                       ║$(_END)"
				@echo "$(_BOLD)$(_GREEN)  ║   $(PIKA0)      ║\n  ║   $(PIKA1)      ║$(_END)"
				@echo "$(_BOLD)$(_GREEN)  ║   $(PIKA2)      ║\n  ║   $(PIKA3)      ║$(_END)"
				@echo "$(_BOLD)$(_GREEN)  ║   $(PIKA4)      ║\n  ║   $(PIKA5)      ║$(_END)"
				@echo "$(_BOLD)$(_GREEN)  ║   $(PIKA6)      ║\n  ║   $(PIKA7)      ║$(_END)"
				@echo "$(_BOLD)$(_GREEN)  ║   $(PIKA8)      ║\n  ║   $(PIKA9)      ║$(_END)"
				@echo "$(_BOLD)$(_GREEN)  ║   $(PIKA10)      ║$(_END)"
				@echo "$(_BOLD)$(_GREEN)  ╚═══════════════════════════════════════╝$(_END)"
				@echo ""

$(OBJDIR)/%.o: 	%.c $(MFILE) $(HDRS) $(SUBHDRS)
				@mkdir -p $(dir $@)
				@$(CC) $(CFLAGS) -c $< -o $@
				@$(eval COMPILED_FILES := $(shell expr $(COMPILED_FILES) + 1))
				@$(eval PERCENT := $(shell echo $$(($(COMPILED_FILES) * 100 / $(TOTAL_FILES)))))
				@$(eval PROGRESS := $(shell echo $$(($(PERCENT) * $(BAR_WIDTH) / 100))))
				@$(eval EMPTY := $(shell echo $$(($(BAR_WIDTH) - $(PROGRESS)))))
				@printf "${_ERASE}  | $(_CYAN)[$(call REPEAT_CHAR,⣿,$(PROGRESS))$(call REPEAT_CHAR, ,$(EMPTY))]${_END} ${_WHITE}${PERCENT}%%${_END} ${_GREY}ϟ Compiling: $<${_END}" 10

$(OBJDIR):
				@echo "$(_PURPLE)Making output directory...$(_END)"
				@mkdir -p $(OBJDIR)
				@echo "$(_PURPLE)Finished.$(_END)"

print_message:
				@if [ ! -f $(NAME) ] || [ `find $(SRC) -newer $(NAME)` ]; then\
					echo "";\
					echo "$(_BOLD)$(_GREEN)  ╔═══════════════════════════════════════╗";\
					echo "  ║ ☆ Library is being created...         ║";\
					echo "  ╚═══════════════════════════════════════╝$(_END)";\
					echo "";\
				else\
					echo "";\
					echo "$(_BOLD)$(_YELLOW)  ╔═══════════════════════════════════════╗";\
					echo "  ║ ⚠️ Library already exists!             ║";\
					echo "  ╚═══════════════════════════════════════╝$(_END)";\
					echo "";\
				fi

clean:
				@$(RM) $(RMFLAGS) $(OBJDIR)
				@echo "  | $(_RED)× Removed the objects.$(_END)"

fclean: 		clean
				@$(RM) $(RMFLAGS) $(NAME)
				@echo "  | $(_RED)× Removed the library.$(_END)"

re: 			fclean all

.PHONY: 		all clean fclean re
