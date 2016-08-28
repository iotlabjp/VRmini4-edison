#!/bin/sh
NODE_PATH="/home/root/node_modules"
node /home/root/mini4/start.js &
/home/root/mjpg-streamer/mjpg_streamer -i "/home/root/mjpg-streamer/input_uvc.so -d /dev/video0 -r 1280x720 -f 15" -o "/home/root/mjpg-streamer/output_http.so -p 9000 -w /home/root/mjpg-streamer/www" &
