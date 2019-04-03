

Black='\033[0;30m'
Red='\033[0;31m'         
Green='\033[0;32m'       
Yellow='\033[0;33m'      
Blue='\033[0;34m'         
Purple='\033[0;35m'       
Cyan='\033[0;36m'        
White='\033[0;37m'       
NC='\033[0m'

Error="${Yellow}Hey could you say yay or nay please???  \n${NC}"

# echo "Im working dodam it"

    while true; do
        read -p "Hey you here for a new project? " yn
        case $yn in
            [Yy]* ) echo "${Red}Cool lets get started \n${NC}"; break;;
            [Nn]* ) echo "${Red}Alright, I guess, see you soon maybe? ${NC}"; break;;
            *) echo "${Error}" ;;
        esac
    done

# if [[ ("$1" == "-c" || "$1" == "--create") && $# == 2 ]]; then

    while [ "$prename" == "" ];do
    echo "So what do you want the project to be called? "
    # Project=$(echo "$2" | tr '[:upper:]' '[:lower:]')
    echo "Project name: "
    read prename
    echo "Ok you now have a project named: $prename"
    done
    Project=$(echo $prename | tr -s ' ')

# read -p "Hey heres a question what language do you program in?" lang
    Directory=./$Project$sp$n
    {
        # If folder exists, add a number after its name.
        while ! mkdir $Directory
        do
            sp="_"
            n=$(printf "%03d" $(( 10#$n + 1 )) )
            Directory=./$Project$sp$n
        done
    } &> /dev/null
    echo "Project path: ${PWD/#$HOME/~}"/$Project

    while true; do
        read -p "Do you want a author file? " yn
        case $yn in
            [Yy]* ) sh ./extrashs/create_author.sh $Directory; echo "${Yellow}Cool you got yourself a author file \n${NC}"; break;;
            [Nn]* ) echo "${Yellow}Thats ok no one likes you anyways \n${NC}"; break;;
            * ) echo "${Error}"
        esac
    done

    while true; do
        read -p "Do you want a gitignore file? " yn
        case $yn in
            [Yy]* ) sh ./extrashs/create_gitignore.sh $Directory; echo "${Green}Cool you got yourself a gitignore file \n${NC}"; break;;
            [Nn]* ) echo "${Green}Thats ok no one likes you anyways \n${NC}"; break;;
            * ) echo "${Error}"
        esac
    done

    

    echo "${Yellow}EY, ALL DONE! REMEMBER YOUR TOWEL! ${NC}"
