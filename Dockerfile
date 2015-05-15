## -*- docker-image-name: "armbuild/scw-app-camlistore:latest" -*-
FROM armbuild/scw-distrib-ubuntu:trusty
MAINTAINER Sebastien Rannou <mxs@sbrk.org> (@aimxhaisse)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install a fresh version of go
RUN apt-get update \
 && apt-get install -q -y git gcc \
 && mkdir -p /goroot


RUN git clone https://go.googlesource.com/go /goroot \
 && cd /goroot \
 && git checkout go1.4.2 \
 && cd src \
 && ./all.bash || true # some unit tests are failling on C1 servers


# Set environment variables.
ENV GOROOT /goroot
ENV GOPATH /gopath
ENV PATH $GOROOT/bin:$GOPATH/bin:$PATH


# Define working directory.
WORKDIR /gopath


# Install camlistore
#RUN git clone https://camlistore.googlesource.com/camlistore \
# && cd camlistore \
# && go run make.go


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
