# Docker
alias d='docker'

# Docker machine
alias dm='docker-machine'

# Docker compose
alias dc='docker-compose'

# Get container process
alias dps='docker ps'

# Get process including stopped containers
alias dpsa='docker ps -a'

# Get images
alias di='docker images'

# Start container
dstart() { docker start $1; }

# Stop container
dstop() { docker stop $1; }

# Stop all running containers
dstopa() { docker stop $(docker ps); }

# Remove container
alias drm='docker rm'

# Remove image
alias drmi='docker rmi'

# Removing all stopped containers
drma() { docker rm $(docker ps -a -q); }

# Removing all images
drmia() { docker rmi $(docker images -q); }

# Getting the IP address
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Build from dockerfile
db() { docker build -t=$1 .; }

# Enter into a running container with bash
dbash() { docker exec -it $1 /bin/bash; }