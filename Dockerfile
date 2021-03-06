FROM debian:latest

RUN apt-get update && apt-get install -y apt-utils wget python3 liblzo2-2 libvorbis0a libvorbisfile3 libvorbisenc2 libogg0 libuchardet0 ssh && apt-get upgrade -y && apt-get autoremove && apt-get autoclean && \
    wget https://mikero.bytex.digital/api/download?filename=depbo-tools-0.7.70-linux-64bit.tgz -O mikerostools.tgz && \
    tar zxvf mikerostools.tgz --strip=1 && rm mikerostools.tgz && rm readme-linux.txt && rm -r doc/ &&\
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/lib/

ENTRYPOINT ["bash"]
