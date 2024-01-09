FROM alpine:latest

MAINTAINER "Shrikant Badiger"

RUN apk add curl ca-certificates && \
    curl -s -L https://github.com/openshift/origin/releases/download/v3.11.0/openshift-origin-server-v3.11.0-0cbc58b-linux-64bit.tar.gz -o /tmp/oc.tar.gz && \
    tar zxvf /tmp/oc.tar.gz -C /tmp/ && \ 
    mv /tmp/openshift-origin-server-v3.11.0-0cbc58b-linux-64bit/oc /usr/bin/ && \
    rm -rf /tmp/oc.tar.gz /tmp/openshift-origin-server-v3.11.0-0cbc58b-linux-64bit/ && \
    rm -rf /root/.cache /var/cache/apk/ && \
    oc version    
CMD ["oc"]
