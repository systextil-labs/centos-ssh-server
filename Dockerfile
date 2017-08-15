FROM centos:latest

MAINTAINER Daniel Silva <dap1995@gmail.com>

ENV LANG pt_BR.UTF-8
ENV LC_ALL pt_BR.UTF-8

RUN yum update -y
RUN yum -y install openssh-server openssh-clients
RUN mkdir /var/run/sshd
RUN echo 'root:admin' | chpasswd
RUN sed -i 's/#PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
RUN echo "export VISIBLE=now" >> /etc/profile
RUN /usr/bin/ssh-keygen -A

CMD "/usr/sbin/sshd" "-D"
