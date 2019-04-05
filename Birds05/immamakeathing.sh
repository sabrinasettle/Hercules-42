#!/bin/bash

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
No="${Red}Thats ok no one likes you anyways \n${NC}"

if [[ ("$1" == "-h" || "$1" == "--help") && $# == 1 ]] ; then
    sh ./extrashs/helpfile.sh
    exit
fi

# echo "Im working dodam it"
    while true; do
        read -p "Hey you here for a new project? " yn
        case $yn in
            [Yy]* ) echo "${White}Cool lets get started \n${NC}"; break;;
            [Nn]* ) echo "${Red}Alright, I guess, see you soon maybe? ${NC}"; exit;;
            *) echo "${Error}" ;;
        esac
    done

    while [ "$prename" == "" ];do
    echo "So what do you want the project to be called? "
    echo "Project name: "
    read prename
    echo "${Red}Ok you now have a project named: $prename \n${NC}"
    done
    Project=$(echo $prename | tr -s ' ')

    Directory=./$Project$sp$n
    {
        # If folder exists, add a _number after its name.
        while ! mkdir $Directory
        do
            sp="_"
            n=$(printf "%03d" $(( 10#$n + 1 )) )
            Directory=./$Project$sp$n
        done
    } &> /dev/null
    echo "${Yellow}Project path: ${PWD/#$HOME/~}"/$Project ${NC}

    # Langauge????
    read -p "What language do you program in? " Lang
    Lang=$( echo "$Lang" | tr '[:upper:]' '[:lower:]')
    if [[ "$Lang" == "c" ]]; then
        mkdir $Directory/srcs
        mkdir $Directory/includes
        mkdir $Directory/lib
        echo "${Green}cool thats the only langauge I know as well\n ${NC}" 
    else
        echo "${Green}cool idk and idc so C!\n${NC}"
    fi

    sh ./extrashs/create_Makefile.sh "$Directory"

    #ask if they want their libft
    while true; do
        read -p "Do you want your libft? " yn
        case $yn in
            [Yy]* ) sh ./extrashs/create_Libft.sh $Directory; echo "${Cyan}Cool you got yourself libft\n${NC}"; break;;
            [Nn]* ) echo "${No}"; break;;
            * ) echo "${Error}"
        esac
    done

    while true; do
        read -p "Do you want a author file? " yn
        case $yn in
            [Yy]* ) sh ./extrashs/create_author.sh $Directory; echo "${Blue}Cool you got yourself a author file \n${NC}"; break;;
            [Nn]* ) echo "${No}"; break;;
            * ) echo "${Error}"
        esac
    done

    while true; do
        read -p "Do you want a gitignore file? " yn
        case $yn in
            [Yy]* ) sh ./extrashs/create_gitignore.sh $Directory; echo "${Purple}Cool you got yourself a gitignore file \n${NC}"; break;;
            [Nn]* ) echo "${No}"; break;;
            * ) echo "${Error}"
        esac
    done

    echo "${White}EY, ALL DONE! REMEMBER YOUR TOWEL! ${NC}"

    exit 0
