##
## EPITECH PROJECT, 2022
## B-PSU-400-STG-4-1-nmobjdump-mathieu.suk
## File description:
## Makefile
##

NM_SRC	=	main.c

NM_OBJ	=	$(NM_SRC:.c=.o)

RM	=	rm -rf

NM_NAME	=	my_nm

CC	=	gcc

FLAGS	=	-Wall \
			-Werror

all:	nm

test: nm

nm:	$(NM_OBJ)
	$(CC) -o $(NM_NAME) $(NM_OBJ) $(FLAGS)

clean:
		$(RM) $(NM_OBJ)

fclean:	clean
		$(RM) $(NM_NAME)

re:	fclean all

.PHONY:	all nm clean fclean re