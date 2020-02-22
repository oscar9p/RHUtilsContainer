FROM registry.redhat.io/ubi8/ubi-minimal

RUN \
  RUN yum -y install --disableplugin=subscription-manager \
  net-tools dnsutils iputils-ping curl git unzip vim wget \
  && yum --disableplugin=subscription-manager clean all

ENV HOME /root

WORKDIR /root

CMD tail -f /dev/null
