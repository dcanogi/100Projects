# Build Container
docker build -t cowsay .
# Execute container
docker run cowsay
# See if the container is alive
docker ps