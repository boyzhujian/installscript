use ./inspectimg.sh imagename   to  get

which port to expose ,which volume to mount ,and run 




# Another interesting   project   reflect imgage to dockerfile https://github.com/lukapeschke/dockerfile-from-image

docker run --rm -v '/var/run/docker.sock:/var/run/docker.sock' lukapeschke/dfa   imageid 

