#!/bin/bash
#!/bin/sh
# shell script to prepend i3status with more stuff

det_playing() {

	pgrep cmus &> /dev/null
	if [[ $? == 0 ]]; then
		currently_playing=$(whatmusic)
		return
	fi

	pgrep mpd &> /dev/null
	if [[ $? == 0 ]];then
		currently_playing=$(mpc current)
	fi
}

i3status | while :
do
	read line
	det_playing
	echo "($(whatmusic)) $line ($(birthDay 2004-06-29))($(timer 0 s))" || exit 1
done

