FROM ubuntu:xenial

RUN apt-get update && apt-get install unzip make -y
ADD http://www.bataribasic.com/bB_Linux_binaries_version_1.0.zip /tmp/
ADD http://bataribasic.com/batari_Basic_version_1.0.zip /tmp/

RUN mkdir -p /app /batari
RUN unzip -d /batari /tmp/bB_Linux_binaries_version_1.0.zip 
RUN unzip -o -d /batari /tmp/batari_Basic_version_1.0.zip 
ADD . /app/
WORKDIR /app
RUN export bB=/batari && export PATH=$PATH:$bB && make
CMD tar -czf - /app/bin
