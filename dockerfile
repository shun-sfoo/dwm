FROM archlinux

RUN echo $'Server = https://mirrors.ustc.edu.cn/$repo/$arch\nServer = https://mirrors.tuna.tsinghua.edu.cn/$repo/$arch' > /etc/pacman.d/cnmirrorlist

RUN pacman -Syu --noconfirm && pacman -S --noconfirm xorg tigervnc noto-fonts-cjk

RUN echo 'session=dwm' >> /etc/tigervnc/vncserver-config-defaults

RUN mkdir -p /usr/share/xsessions

RUN echo $'[Desktop Entry]\nEncoding=UTF-8\nName=Dwm\nComment=Dynamic window manager\nExec=dwm\nIcon=dwm\nType=XSession' > /usr/share/xsessions/dwm.desktop

RUN printf "123456\n123456\nn" | vncpasswd

EXPOSE 5901
