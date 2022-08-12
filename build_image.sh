docker build --no-cache -t foo_image . #build the image
docker create --name foo_container foo_image #create container
