FROM rehiy/webox:nginx-geoip

LABEL version="15.5.0" \
      maintainer="wang@rehiy.com"

ENV GOACCESS_REPORT_PWD="admin"
ENV GOACCESS_REPORT_URL="ws://localhost:80"

ADD initfs /tmp
RUN sh /tmp/deploy

ENTRYPOINT ["/sbin/init"]

EXPOSE 80 443
