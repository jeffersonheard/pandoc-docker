FROM ubuntu

MAINTAINER Jefferson Heard

# generic OS update
RUN apt-get update

# install pandoc
RUN sudo apt-get -y install pandoc

# mount point
RUN mkdir -p /host
WORKDIR /host

# show how we built it
ADD Dockerfile /

CMD pandoc.sh
