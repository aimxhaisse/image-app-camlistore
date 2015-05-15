## -*- docker-image-name: "armbuild/scw-app-camlistore:latest" -*-
FROM armbuild/scw-distrib-ubuntu:trusty
MAINTAINER Sebastien Rannou <mxs@sbrk.org> (@aimxhaisse)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Work here

# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
