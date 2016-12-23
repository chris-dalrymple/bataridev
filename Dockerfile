FROM ubuntu:xenial

RUN apt-get update && apt-get install unzip make -y
ADD http://www.bataribasic.com/bB_Linux_binaries_version_1.0.zip /tmp/

RUN mkdir -p /app /batari
RUN unzip /tmp/bB_Linux_binaries_version_1.0.zip /batari/ \
    && export db=$HOME/batari && export PATH=$PATH:$bB
ADD . /app/
WORKDIR /app
RUN make
CMD tar -czf - /app
