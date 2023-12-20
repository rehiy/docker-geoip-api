FROM rehiy/webox:nginx-geoip

LABEL version="1.1.2" \
      maintainer="wang@rehiy.com"

ENV REPORT_PWD="admin"
ENV REPORT_URL="ws://localhost:80"

ADD initfs /tmp
RUN sh /tmp/deploy

ENTRYPOINT ["/sbin/init"]

EXPOSE 80 443
