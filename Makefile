NAME := libft.a

SRCS := ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c \
ft_isprint.c ft_memcpy.c ft_memmove.c ft_memset.c ft_strlcpy.c ft_strlen.c \
ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c \
ft_memchr.c ft_memcmp.c ft_atoi.c ft_strnstr.c ft_calloc.c ft_strdup.c ft_substr.c \
ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c \
ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c \
ft_lstclear.c ft_lstiter.c ft_lstmap.c \
ft_printf/ft_printf.c ft_printf/ft_putchar.c ft_printf/ft_putnbr.c ft_printf/ft_putstr.c ft_printf/ft_putunbr.c ft_printf/ft_putnbr_base.c ft_printf/ft_printhex.c \
get_next_line/get_next_line_bonus.c get_next_line/get_next_line_utils_bonus.c
OBJS := $(SRCS:.c=.o)

CFLAGS := -Wall -Wextra -Werror
CC := cc
AR := ar rcs

all: $(NAME)

$(NAME): $(OBJS)
	@$(AR) $@ $^

$(OBJS): %.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

fclean: clean
	@rm -f $(NAME)

clean:
	@rm -f $(OBJS)

re: fclean all

.PHONY: all fclean clean re