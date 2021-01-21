FROM janusgraph/janusgraph:0.5.3

LABEL maintainer="lionel@sqooba.io"

# TODO: Custom log configs with relevant jar files.
# COPY --chown=janusgraph:janusgraph log4j-server.properties ${JANUS_HOME}/conf/gremlin-server/
# COPY --chown=janusgraph:janusgraph log4j-console.properties ${JANUS_HOME}/conf/
# COPY --chown=janusgraph:janusgraph logback.xml ${JANUS_HOME}/conf/
# (ADD --chown=janusgraph:janusgraph http://central.maven.org/maven2/biz/paluch/logging/logstash-gelf/1.14.1/logstash-gelf-1.14.1.jar ${JANUS_HOME}/lib/)
# (ADD --chown=janusgraph:janusgraph http://central.maven.org/maven2/org/apache/commons/commons-pool2/2.4.3/commons-pool2-2.4.3.jar ${JANUS_HOME}/lib/)

COPY --chown=janusgraph:janusgraph connect.groovy ${JANUS_HOME}/scripts/connect.groovy
