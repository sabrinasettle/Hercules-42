
if [ "$#" == 1 ] 
then
    Directory=$1
    {
        touch $Directory/Makefile
        echo 'NAME = ' >> $Directory/Makefile
        echo '' >> $Directory/Makefile
        echo 'FLAGS = -Wall -Wextra -Werror' >> $Directory/Makefile
        echo '' >> $Directory/Makefile
        echo 'SRC = ./srcs/' >> $Directory/Makefile
        echo 'INC = ./includes/' >> $Directory/Makefile
        echo '' >> $Directory/Makefile
        echo '$(NAME): ' >> $Directory/Makefile
        echo '      @gcc $(FLAGS)' >> $Directory/Makefile
        echo '      @ar rc $(NAME)' >> $Directory/Makefile
        echo '' >> $Directory/Makefile
        echo 'clean:' >> $Directory/Makefile
        echo '      @rm -f' >> $Directory/Makefile
        echo '' >> $Directory/Makefile
        echo 'fclean: clean' >> $Directory/Makefile
        echo '      @rm -f $(NAME)' >> $Directory/Makefile
        echo '' >> $Directory/Makefile
        echo 're: fclean all' >> $Directory/Makefile
        echo '' >> $Directory/Makefile
        echo '.PHONY: all, clean, fclean, re' >> $Directory/Makefile

    } 
else
    echo "usage: sh $0 directory_path_missing"
fi
    exit 0
    