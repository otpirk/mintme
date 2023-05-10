FROM ubuntu:20.04
    apt-get -y install wget nano htop sudo screen openssh-server
RUN echo "PermitRootLogin yes" > /etc/ssh/sshd_config.new && \
    cat /etc/ssh/sshd_config >> /etc/ssh/sshd_config.new && \
    mv /etc/ssh/sshd_config.new /etc/ssh/sshd_config && \
    /etc/init.d/ssh restart
RUN mkdir /home/otpirk && \
    useradd -ms /bin/bash otpirk && \
    echo 'otpirk:1234' | chpasswd && \
    chown -R otpirk:otpirk /home/otpirk
VOLUME /home/otpirk
COPY /home/otpirk /home/otpirk
#RUN systemctl start ssh
#RUN service ssh start
RUN chmod +x webchain-miner
