# docker-consumer
## docker build
docker build -t consumer .
## docker start
docker run -it -d -p 9876:9876 -v /opt/logs/consumer.out:/opt/consumer.out --name consumer consumer /bin/bash
