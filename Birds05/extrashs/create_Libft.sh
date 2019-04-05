if [ "$#" -ne 1 ] ; then
    echo "usage: sh $0 libft_path"
else
    Directory=$1
    mkdir -p $Directory/libft
    read -p "Specify libft location: ~/" libft_path
    cp -R ~/$libft_path/* "$Directory/libft"
fi
    exit 0