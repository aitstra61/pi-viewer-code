#!/bin/bash
wait_time=5 # seconds
echo ""
##export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;35m\]\u\[\033[01;30m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ \[\033[01;36m\] '
echo ""
echo "Hey there CPCC friend - hope you are having a blessed day!"
echo ""
echo "This is your chance to go to the desktop - or we run the slideshow application"
echo ""
echo "You WILL need to have a keyboard attached to do this..."
echo ""
temp_cnt=${wait_time}
while [[ ${temp_cnt} -gt 0 ]];
do
    printf "\rYou have %2d second(s) remaining to hit Ctrl+C to cancel!" ${temp_cnt}
    sleep 1
    ((temp_cnt--))
done
echo ""
echo ""
echo "OK, going to show the slides and videos, you had your chance!"

sleep 3
xdotool getactivewindow windowminimize
COUNTER=0
while [ $COUNTER -lt 100000 ]; do
    DISPLAY=:0.0 XAUTHORITY=/home/pi/.Xauthority /usr/bin/feh -qZYFD8 --cycle-once /share;
    sleep 1;
    #videofile=$(ls -l|grep .vid|wc -l);
    #echo $videofile;
    #if [ "$videofile" -ne "0" ]
    # then
    #  DISPLAY=:0.0 XAUTHORITY=/home/pi/.Xauthority /usr/bin/cvlc -f -q --no-osd "/share" vlc://quit
    #fi
    let COUNTER=COUNTER+1;
    echo $COUNTER;
done
echo ""

