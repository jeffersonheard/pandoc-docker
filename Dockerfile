FROM ubuntu

MAINTAINER Jefferson Heard

# generic OS update
RUN apt-get update

# install pandoc
RUN sudo apt-get -y install pandoc curl

# mount point
RUN mkdir -p /host
WORKDIR /host

# show how we built it
WORKDIR /src
ADD . /src

CMD /bin/bash pandoc.sh
