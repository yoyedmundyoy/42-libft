NAME := libftprintf.a
SRCS := ft_printf.c ft_putchar.c ft_putnbr.c ft_putstr.c ft_putunbr.c ft_putnbr_base.c ft_printhex.c
OBJS := $(SRCS:.c=.o)
CFLAGS := -Wall -Wextra -Werror
CC := cc
AR := ar rcs

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $@ $^

$(OBJS): %.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

fclean: clean
	rm -f $(NAME)

clean:
	rm -f $(OBJS)

re: fclean all

.PHONY: all fclean clean re