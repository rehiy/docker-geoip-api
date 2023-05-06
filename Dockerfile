FROM rehiy/webox:nginx

LABEL version="1.0.0" \
      maintainer="wang@rehiy.com"

ENV REPORT_PWD="admin"
ENV REPORT_URL="ws://localhost:80"

ADD initfs /ifs
RUN sh /ifs/deploy

ENTRYPOINT ["/sbin/init"]

EXPOSE 80 443
