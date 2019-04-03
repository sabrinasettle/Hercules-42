if [ "$#" -ne 1 ] ; then
    echo "usage: sh $0 directory_path"
else
    DIRECTORY=$1
    echo $USER > $DIRECTORY/author
fi
    exit 0
