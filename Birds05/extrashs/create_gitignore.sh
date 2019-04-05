
if [ "$#" -ne 1 ] ; then
    echo "usage: sh $0 Directory_path"

else
    Directory=$1
    {
        $Directory/.gitignore
        echo "*.DS_Store" >> $Directory/.gitignore
        echo "a.out" >> $Directory/.gitignore
        echo "._*" >> $Directory/.gitignore

    } &> /dev/null
fi
    exit 0