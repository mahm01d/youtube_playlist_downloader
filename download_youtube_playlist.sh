#! /bin/bash
##this is youtube playlist downloader made by github.com/mahm01d ##

clear
#greating(1) 
    echo -e "\n" ; echo -e "\n"
    echo "              ###########################" ;
    echo "              |||       written by:   |||" ;
    echo "              |||  github.com/mahm01d |||" ;
    echo "              ###########################" ; #sleep 1
    echo "             ** loading  please  waite **"
    echo "this script requires youtube-dl to be installed on your linux !!"
    echo -e "\n" ; echo -e "\n"
        sleep 1

#greating(2)
    dateis=$(date | cut -d' ' -f 5)
        if [ $dateis == PM ]

	        then 
	        echo "good evening $USER"
	        elif [$dateis == AM] 
	        then
	        echo "good morning $USER"
        fi



    ostybe=$(cat /etc/os-release | head -1 | cut -d = -f 2)
    echo "you are using $ostybe"


#downloader using youtube-dl
    echo "please enter your Playlist URL here"
    read list
    echo "please waite"
    echo "enter your list is getting ready" ; sleep 1
    youtube-dl -i -f mp4 --yes-playlist $list
    #please

#checking exit code

    #if [ $? -eq 2 ] 
        #then
        #echo "blah blah blah"
    #fi


#hint to my self while scripting this bash script 
#to check the exit code and send a messege to user add the line below after the command 
## //commend//  |tee|test $? -eq 0 |tee| echo "checking exit code"