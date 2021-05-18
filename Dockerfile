FROM cassandra:3

RUN mkdir -p /opt/jmx-exporter
RUN curl --output /opt/jmx-exporter/jmx_prometheus_javaagent-0.15.0.jar https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.15.0/jmx_prometheus_javaagent-0.15.0.jar
COPY cassandra.yaml /opt/jmx-exporter/
