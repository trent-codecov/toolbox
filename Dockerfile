FROM alpine:3.15.4
LABEL name="toolbox"
RUN apk --update --no-cache add \
  strace \
  bind-tools \
  netcat-openbsd \
  net-tools \
  nmap \
  curl \
  tcpdump \
  htop \
  mtr \
  iotop \
  iftop \
  iputils \
  speedtest-cli py-setuptools \
  hdparm \
  dstat@testing \
  redis
COPY tests.sh /tmp/
