FROM gcr.io/cloudshell-images/cloudshell:latest

RUN apt-get -y install lsof bash-completion

RUN curl -L https://github.com/jenkins-x/jx/releases/download/v1.3.1102/jx-linux-amd64.tar.gz | tar -zxv -C /bin
RUN curl -L https://github.com/derailed/k9s/releases/download/0.5.1/k9s_0.5.1_Linux_x86_64.tar.gz | tar -zxv -C /bin k9s