#/bin/sh

ffmpeg -f alsa -ac 2 -i hw:0 -f v4l2 -s 640x480 -i /dev/video0 -t 20 video.mpg
#-f alsa  	Use ALSA for audio input  
#-ac 2		Audio channel is Stereo (1 for Mono, 2 for Stereo)  
#-i hw:0  	Input Audio Card is 0  
#-f v4l2		Use V4L2 capture device  
#-s 640x480	Resolution is 640 x 480  

#arecord -l
#**** List of CAPTURE Hardware Devices ****
#card 0: artikak4953 [artik-ak4953], device 0: Playback ak4953-AIF1-0 []
#j  Subdevices: 1/1
#  Subdevice #0: subdevice #0
#card 1: U0x46d0x81b [USB Device 0x46d:0x81b], device 0: USB Audio [USB Audio]
#  Subdevices: 1/1
#  Subdevice #0: subdevice #0
