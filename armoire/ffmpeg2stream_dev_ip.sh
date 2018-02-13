#!/bin/sh

ffmpeg -f jack -i ffmpeg -y -f v4l2 -s 640x360 -i $1 -vcodec libx264 -vb 150000 -g 60 -vprofile baseline -level 3 -acodec aac -ab 160000 -ar 48000 -ac 2 -vbsf h264_mp4toannexb -strict experimental -f mpegts -pix_fmt yuv420p $2

