#!/bin/bash
#Paramètres pour rclone et VLC
RCLONE_REMOTE_NAME="webTVAston"
RCLONE_REMOTE_PATH="videos"
LOCAL_PATH="/home/baibao/Downloads"
#Synchroniser le dossier avec rclone
echo "Starting Rclone" >> /home/baibao/Desktop/logfile.txt
rclone sync "$RCLONE_REMOTE_NAME:$RCLONE_REMOTE_PATH" "$LOCAL_PATH"
pkill mpv -x
export DISPLAY=:0 && mpv -fs -loop 0 /home/baibao/Downloads/video.mp4
