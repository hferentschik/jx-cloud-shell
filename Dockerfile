FROM gcr.io/cloudshell-images/cloudshell:latest

RUN apt-get -y install lsof bash-completion

RUN curl -L https://github.com/jenkins-x/jx/releases/download/v2.0.182/jx-linux-amd64.tar.gz | tar -zxv -C /bin
RUN curl -L https://github.com/derailed/k9s/releases/download/0.6.7/k9s_0.6.7_Linux_x86_64.tar.gz | tar -zxv -C /bin k9s
