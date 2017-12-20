use https://github.com/codeskyblue/gohttpserver
to create tmp server for file temp store and use 

#Put this file under go src project ,


docker build -t gohttpserver  .
docker run -d -p 8000:8000 -it --rm --name tmpgohttpserver gohttpserver

