FROM gcr.io/cloudshell-images/cloudshell:latest

RUN apt-get -y install lsof bash-completion git tig 

ARG home=/home/hferentschik
ENV HOME=$home

RUN mkdir /scripts
COPY bash_aliases /scripts/bash_aliases
RUN chmod -R o+rwx /scripts

ENV KREW_ROOT=/krew
RUN mkdir $KREW_ROOT
RUN chmod -R o+rwx $KREW_ROOT

RUN curl -fsSLO "https://storage.googleapis.com/krew/v0.2.1/krew.{tar.gz,yaml}" && \
    tar zxvf krew.tar.gz && \
    ./krew-"$(uname | tr '[:upper:]' '[:lower:]')_amd64" install --manifest=krew.yaml --archive=krew.tar.gz

RUN chmod -R o+rwx $KREW_ROOT
RUN chmod -R o+rw /tmp

ENV K9S_VERSION=0.8.4
ENV JX_VERSION=2.0.686

RUN curl -L https://github.com/jenkins-x/jx/releases/download/v$JX_VERSION/jx-linux-amd64.tar.gz | tar -zxv -C /bin
RUN curl -L https://github.com/derailed/k9s/releases/download/${K9S_VERSION}/k9s_${K9S_VERSION}_Linux_x86_64.tar.gz | tar -zxv -C /bin k9s

