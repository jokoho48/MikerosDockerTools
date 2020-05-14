FROM ubuntu:latest

RUN apt-get update && apt-get install -y apt-utils wget python3 liblzo2-2 libvorbis0a libvorbisfile3 libvorbisenc2 libogg0 ssh && apt-get upgrade -y && apt-get autoremove && apt-get autoclean && \
    wget https://mikero.bytex.digital/api/download?filename=depbo-tools-0.7.25-linux-64bit.tgz -O mikerostools.tgz && \
    tar zxvf mikerostools.tgz --strip=1 && unlink mikerostools.tgz && \
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/lib/

CMD [ "/bin/bash" ]
