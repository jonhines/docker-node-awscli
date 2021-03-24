FROM jshimko/kube-tools-aws:latest

RUN apk add --no-cache curl
WORKDIR /tmp/plug

RUN curl -L https://github.com/vmware-tanzu/octant/releases/download/v0.17.0/octant_0.17.0_Linux-64bit.tar.gz | tar xzv
RUN mv ./octant_0.17.0_Linux-64bit/octant /root/

WORKDIR /root

EXPOSE 7777

CMD OCTANT_LISTENER_ADDR=0.0.0.0:7777 ./octant --disable-open-browser
