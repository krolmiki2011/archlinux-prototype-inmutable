FROM greyltc/archlinux:latest

LABEL contributor="mikolajziolkowski504@gmail.com"

COPY fs/etc/pacman.conf /etc/pacman.conf
COPY packages /tmp/packages
COPY build-image /build-image

RUN /build-image
