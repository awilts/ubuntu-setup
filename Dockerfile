FROM ubuntu:19.10
RUN apt-get update
RUN apt-get -y install sudo
RUN useradd -ms /bin/bash alex
RUN adduser alex sudo
RUN echo "alex:alex" | chpasswd
USER alex
WORKDIR /home/alex
COPY setup.sh setup.sh