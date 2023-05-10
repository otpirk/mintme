FROM ubuntu:20.04
RUN apt-get update && apt-get -y install wget nano sudo screen openssh-server
RUN /bin/bash echo 'PermitRootLogin yes' > /etc/ssh/sshd_config
RUN mkdir /home/otpirk && \
    useradd -ms /bin/bash otpirk && \
    echo 'otpirk:1234' | chpasswd && \
    chown -R otpirk:otpirk /home/otpirk && \
    echo 'PermitRootLogin yes' > /etc/ssh/sshd_config
VOLUME /home/otpirk
RUN cd /home/otpirk
COPY ./ /home/otpirk/
