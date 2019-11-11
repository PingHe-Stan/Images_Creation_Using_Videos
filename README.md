# Images_Creation_Using_Videos
### By Stan He, 11th Nov. 2019
### Purpose: Create a series of images for deep learning using videos recorded on cellphone
#### Note: If you used iPhone to record the objects to be learned by CNN, then you need to convert from MOV to MP4 first before extracting images from the original videos.

- Step One: Download critical dependencies for video manipulation
If you are using Mac, please type the following command in the terminal:
brew install ffmpeg

- Step Two: After the successful installation, run the following command for video batch conversion from MOV to MP4 if you are using iPhone to make the recording.

- Step Three: If the recorded video is in MP4 format, then you are good to go.

--3.1 In terminal, RUN:
chmod +x video2images.sh # make the Shell script executable.

--3.2 If you would like to create 5 images every second of video (ie every 200ms), then in terminal, RUN: 
./video2images.sh /home/user/directoryOfVideos 5
