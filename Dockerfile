FROM ubuntu:14.04
MAINTAINER yaasita

RUN mkdir /root/.ssh
ADD authorized_keys /root/.ssh/authorized_keys

RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties openssh-server
RUN mkdir /var/run/sshd/
RUN apt-add-repository ppa:zanchey/asciinema
RUN apt-get update
RUN apt-get install -y asciinema
RUN apt-get install -y python-virtualenv

CMD /usr/sbin/sshd -D

