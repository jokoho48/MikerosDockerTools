FROM ubuntu:latest

RUN apt-get update && apt-get install -y apt-utils wget python3 liblzo2-2 libvorbis0a libvorbisfile3 libvorbisenc2 libogg0 && apt-get upgrade -y && apt-get autoremove && apt-get autoclean 

RUN wget https://mikero.bytex.digital/api/download?filename=depbo-tools-0.7.25-linux-64bit.tgz -O mikerostools.tgz && \
    tar zxvf mikerostools.tgz && mv depbo-tools-0.7.25 mikerosTools && rm mikerostools.tgz
RUN chmod +x /mikerosTools/bin/

RUN export PATH="/bin/mikerosTools/bin:$PATH" && export LD_LIBRARY_PATH="/bin/mikerosTools/lib"

CMD [ "/bin/bash" ]