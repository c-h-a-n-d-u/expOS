# expOS

## Description
An experimental Operating System project.

URL: https://exposnitc.github.io

## Setup

**OS:** macOS (Apple Silicon)

### Installation Commands
```bash
cd <your_directory>
touch Dockerfile
mkdir workdir
docker build -t expos-env . #build command
docker run -v $PWD/workdir:/home/expos/myexpos/workdir -d --name expos -it expos-env  
# to create a container 
docker exec -it expos bash
exit # to exit the interactive shell
docker ps # to check if the container is running
docker start expos # start
docker stop expos # stop
```

## Stage2: Understanding File System
```bash
cd myexpos
cd xfs-interface
./xfs-interface
fdisk   #creats a new disk/formats existing disk
df  #disk free list
dump --inodeusertable   #dumps inode table to file
dump --rootfile #dumps rootfile to file
load --data sample.dat  # loads data file to disk
df
dump --inodeusertable
dump --rootfile
exit
```
