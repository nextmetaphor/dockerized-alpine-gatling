FROM nextmetaphor/alpine-java
ARG GATLING_VERSION=2.2.5
RUN cd /tmp && wget http://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts-bundle/$GATLING_VERSION/gatling-charts-highcharts-bundle-$GATLING_VERSION-bundle.zip
RUN mkdir -p /opt && unzip /tmp/gatling-charts-highcharts-bundle-$GATLING_VERSION-bundle.zip -d /opt && rm /tmp/gatling-charts-highcharts-bundle-$GATLING_VERSION-bundle.zip
RUN cd /opt && ln -s gatling-charts-highcharts-bundle-$GATLING_VERSION gatling-charts-highcharts-bundle
WORKDIR /opt/gatling-charts-highcharts-bundle
ENTRYPOINT sh