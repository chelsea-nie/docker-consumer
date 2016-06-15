FROM alpine:3.3
MAINTAINER chelsea_nie

RUN apk add --update bash patch openjdk8 && rm -rf /var/cache/apk/*

ENV JAVA_HOME /usr/lib/jvm/default-jvm

COPY ./consumer.tar.gz /tmp/
RUN mkdir -p /opt/consumer/ && touch /opt/consumer.out && tar zxvf /tmp/consumer.tar.gz -C /opt/consumer/

EXPOSE 9876 

WORKDIR /opt/consumer

#CMD ./start.sh
ENTRYPOINT ["/opt/consumer/start.sh"]
