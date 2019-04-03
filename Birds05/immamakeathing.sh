

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

    read -p "Hey you here for a new project? " yn
    case $yn in
        [Yy]* ) echo "${Red}Cool lets get started${NC}"; break;;
        [Nn]* ) echo "${Red}Alright, I guess, see you soon maybe? ${NC}"; break;;
        *) echo "${Error}"
    esac

    #while true; do?
    read -p "So what do you want the project to be called? " Project
    # case $project

    while true; do
        read -p "Do you want a author file? " yn
        case $yn in
            [Yy]* ) sh ./extrashs/create_author.sh $DIRECTORY; echo "${Yellow}Cool you got yourself a author file \n${NC}"; break;;
            [Nn]* ) echo "${Yellow}Thats ok no one likes you anyways \n${NC}"; break;;
            * ) echo "${Error}"
        esac
    done

    while true; do
        read -p "Do you want a gitignore file? " yn
        case $yn in
            [Yy]* ) sh ./extrashs/create_gitignore.sh $DIRECTORY $Project; echo "${Green}Cool you got yourself a gitignore file \n${NC}"; break;;
            [Nn]* ) echo "${Green}Thats ok no one likes you anyways \n${NC}"; break;;
            * ) echo "${Error}"
        esac
    done

    read -p "Hey heres a question what language do you program in?" lang



    echo "${Yellow}EY, ALL DONE! REMEMBER YOUR TOWEL! ${NC}"