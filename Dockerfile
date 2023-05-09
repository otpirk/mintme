FROM ubuntu:20.04
MAINTAINER Otpirk otpirk@outlook.com
RUN apt-get update && apt upgrade
RUN apt-get -y install wget nano htop sudo openssh-server screen git
RUN useradd -ms /bin/bash root
RUN echo 'root:1234' | chpasswd
RUN mkdir /home/otpirk && cd /home/otpirk
WORKDIR /home/otpirk
#RUN screen -R mintme
#COPY  /home/otpirk  /home/otpirk
RUN cd /home/otpirk
RUN sudo sh -c 'echo "PermitRootLogin yes" > /etc/ssh/sshd_config.new && cat /etc/ssh/sshd_config >> /etc/ssh/sshd_config.new && mv /etc/ssh/sshd_config.new /etc/ssh/sshd_config' 
RUN /etc/init.d/ssh restart
RUN chmod +x webchain-miner
VOLUME /home/otpirk
