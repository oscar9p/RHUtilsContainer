FROM registry.access.redhat.com/ubi8/ubi-minimal

RUN \
  microdnf install \
  net-tools bind-utils iputils curl git unzip vim wget \
  && microdnf clean all

RUN dnf install telnet 

ENV HOME /root

WORKDIR /root

CMD tail -f /dev/null
