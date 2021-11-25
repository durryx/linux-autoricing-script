#!/bin/bash

audio(){
	TMPFILE1=$(mktemp)
	dialog --menu "ffmpeg or arecord:" 20 40 3 \
    	1 ffmpeg \
    	2 arecord 2>$TMPFILE1
	RESULT1=$(cat $TMPFILE1)
	case $RESULT1 in
   	1) clear; ffmpeg -f pulse -i alsa_input.pci-0000_00_1f.3.analog-stereo -ac 2 -ar 44100 -ab 320k $(date '+%d-%m-%Y')_durryrant.flac;;
    	2) clear; arecord -f cd $(date +'%d-%m-%Y')_durryrant.wav;;
    	*) echo "exiting ... ";;
	esac
	rm $TMPFILE1
	return 0
}

cd ~/Documenti/audio_notes
TMPFILE=$(mktemp)
dialog --menu "choose audio or video recording" 10 30 3 \
	1 audio \
	2 video 2>$TMPFILE
RESULT=$(cat $TMPFILE)
case $RESULT in
	1) audio;;
	2) clear; echo "work in progress";;
	*) echo "exiting ... ";;
esac
rm $TMPFILE
