

# slice a video into timed segments
ffmpeg -i <filename>.mkv -f segment -segment_time 15 -reset_timestamps 1 p1_%.mp4

# see resolution of a video 
ffprobe -v error -select_streams v:0 -show_entries stream=width,height -of csv=s=x:p=0 <filename>

# scale a video file 
ffmpeg -i input.mp4 -vf scale=1280:720 output.mp4
