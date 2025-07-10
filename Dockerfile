FROM greyltc/archlinux:latest

LABEL contributor="mikolajziolkowski504@gmail.com"
RUN echo -e "keyserver-options auto-key-retrieve" >> /etc/pacman.d/gnupg/gpg.conf
COPY fs/etc/pacman.conf /etc/pacman.conf
COPY packages /tmp/packages
COPY build-image /tmp/build-image

RUN /tmp/build-image
