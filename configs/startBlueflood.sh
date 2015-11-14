#!/usr/bin/env bash

echo "CASSANDRA_HOSTS=$CASSANDRA_PORT_9042_TCP_ADDR:9160" >> blueflood.conf

/usr/bin/java \
        -Dblueflood.config=file:./blueflood.conf \
        -Dlog4j.configuration=file:./blueflood-log4j.properties \
        -Xms1G \
        -Xmx1G \
        -Dcom.sun.management.jmxremote.authenticate=false \
        -Dcom.sun.management.jmxremote.ssl=false \
        -Djava.rmi.server.hostname=localhost \
        -Dcom.sun.management.jmxremote.port=9180 \
        -classpath blueflood-all-2.0.0-SNAPSHOT-jar-with-dependencies.jar com.rackspacecloud.blueflood.service.BluefloodServiceStarter 2>&1
