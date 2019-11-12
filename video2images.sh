#!/bin/bash
#############################
# To convert MOV to MP4 in batch if needed
# To extract images from MP4 for image recognition.
# After the completion of conversion, there will be a folder in the parent directory that contains the original videos.
# @Author: Stan He
#############################
FPS="$2"
FILE_DIR="$1"

#Step 1: Create MP4 videos from MOV and Place the original MOV files into the parent directory.
cd $FILE_DIR
mkdir dir_MOV
for file in `ls |grep .MOV`
do
ffmpeg -i "$file" -vcodec copy -acodec copy "${file%.*}".MP4
done
mv *.MOV dir_MOV
mv dir_MOV ..


#Step 2: Create Images using MP4 videos in the current folder
for f in `ls |grep .MP4`
do 
FILEPREFIX=$(echo $f|sed 's/.MP4//g') 
mkdir dir_${FILEPREFIX} 
ffmpeg -i "$FILEPREFIX".MP4 -y -an -q 0 -vf fps=2 "$FILEPREFIX"_%04d.JPG
mv *.JPG dir_${FILEPREFIX}
done
mkdir dir_MP4
mv *.MP4 dir_MP4
mv dir_MP4 ..
