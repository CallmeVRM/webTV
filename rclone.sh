#!/bin/bash
#Paramètres pour rclone et VLC
RCLONE_REMOTE_NAME="webTV"
RCLONE_REMOTE_PATH="videos"
LOCAL_PATH="/home/user/Downloads"
#Synchroniser le dossier avec rclone
echo "Starting Rclone" >> /home/user/Desktop/logfile.txt
rclone sync "$RCLONE_REMOTE_NAME:$RCLONE_REMOTE_PATH" "$LOCAL_PATH"
pkill mpv -x
export DISPLAY=:0 && mpv -fs -loop 0 /home/user/Downloads/video.mp4
