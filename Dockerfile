FROM ubuntu:20.04
RUN apt-get update && apt-get -y install wget nano sudo
#RUN apt-get update && apt-get -y install wget nano htop sudo screen openssh-server
#RUN /bin/bash echo "PermitRootLogin yes" > /etc/ssh/sshd_config.new && \
#    cat /etc/ssh/sshd_config >> /etc/ssh/sshd_config.new && \
#    mv /etc/ssh/sshd_config.new /etc/ssh/sshd_config && \
#    /etc/init.d/ssh restart
RUN mkdir /home/otpirk && \
    useradd -ms /bin/bash otpirk && \
    echo 'otpirk:1234' | chpasswd && \
    chown -R otpirk:otpirk /home/otpirk
VOLUME /home/otpirk
RUN /home/otpirk
COPY ./ /home/otpirk/
#RUN systemctl start ssh
#RUN service ssh start
#RUN chmod a+x webchain-miner
