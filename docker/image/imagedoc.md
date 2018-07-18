- Chrome
  ```
  $ docker run -it \
  --net host \
  --cpuset 0 \
  --memory 512mb \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=unix$DISPLAY \
  -v $HOME/Downloads:/root/Downloads \
  -v $HOME/.config/google-chrome/:/data \
  -v /dev/snd:/dev/snd --privileged \
  --name chrome \
  jess/chrome
  ```
  
- firefox
docker run -d \
--name firefox \
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
kennethkl/firefox
