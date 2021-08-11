#! /bin/bash

##
# GLOBAL KEYS
##

audio=$1
tmp_dir=/tmp/10999

##
# COLOR 
##

green='\e[32m'
blue='\e[34m'
Clear='\e[0m'

ColGreen() {
	echo -ne "$green$*$Clear"
}

ColBlue() {
	echo -ne "$blue$*$Clear"
}

function get_titles() {
	echo -ne "Looking for: $(ColGreen $key)"
	echo ""
	rm -rf $tmp_dir	
	youtube-dl "ytsearch5:$key" --get-title >> $tmp_dir

	menu
}


play_video() {
	echo -ne "$(ColBlue '[INFO]') -> Featching Data. Please wait...\n"
	id=$(youtube-dl "ytsearch:$1" -x --get-id)
	url="https://www.youtube.com/watch?v=$id"
	echo -ne "Now Playing: $(ColGreen $1)\n"
	[[ $audio == "-a" ]] && $(mpv $url --no-video) || $(mpv $url)
}


search(){
	echo -ne "Search: "
	read s
	key="$s"
	get_titles
}

menu() {
	readarray -t titles < $tmp_dir
	for i in "${!titles[@]}"
	do
		echo -ne "$(ColBlue [$i]) -> ${titles[$i]}\n" 
	done
	echo -ne "$(ColBlue [5]) -> Exit\n"
	echo -ne "$(ColGreen 'Choose an option:') "
	read option
	case $option in
			0) play_video "${titles[0]}" ; clear && search ;;
			1) play_video "${titles[1]}" ; clear && search ;;
			2) play_video "${titles[2]}" ; clear && search ;;
			3) play_video "${titles[3]}" ; clear && search ;;
			4) play_video "${titles[4]}" ; clear && search ;;
			5) exit 0 ;;
			*) echo -e "Wrong Option. Exiting..." ; exit 0;;
		esac

}


run() {
	if [[ $audio == "-a" ]]
	then
		
		echo -ne "$(ColBlue '[INFO]') -> You running on $(ColBlue 'audio mode!')\n    --> Run the command $(ColBlue 'without -a') to run as video mode\n"
	else 
		echo -ne "$(ColBlue '[INFO]') -> You running on $(ColBlue 'video mode!')\n    --> Run the command $(ColBlue 'with -a') to run as audio mode\n"
	fi

	search
}




run
