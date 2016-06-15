#!/bin/bash
exec java -jar oltp-service-consumer-1.0-SNAPSHOT.jar >> /opt/logs/consumer.out 2>&1
