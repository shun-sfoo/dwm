# README

thanks to  https://dwm.suckless.org/, but I want use it in clangd language server,
so I change it's build tool. Now I use cmake.
 
## docker

when you build from some docker image , docker search the docker image first.

### build

docker build -t dwm . 

### run

docker run -it -p 5901:5901 -v $HOME/WorkSpaces/dwm:/app/dwm dwm

## notice

in awesome mod4key is global so in docker dwm change to mod1key (alt)

## run

vncserver :1

password is 123456

## TODO

cmake install
