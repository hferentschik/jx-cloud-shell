FROM gcr.io/cloudshell-images/cloudshell:latest

RUN apt-get -y install lsof bash-completion

RUN curl -L https://github.com/jenkins-x/jx/releases/download/v2.0.604/jx-linux-amd64.tar.gz | tar -zxv -C /bin
RUN curl -L https://github.com/derailed/k9s/releases/download/0.8.2/k9s_0.8.2_Linux_x86_64.tar.gz | tar -zxv -C /bin k9s

ARG home=/home/hferentschik
ENV HOME=$home

RUN mkdir /scripts
COPY bash_aliases /scripts/bash_aliases
RUN chmod -R o+rwx /scripts

