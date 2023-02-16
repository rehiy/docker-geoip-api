FROM rehiy/webox:nginx-geoip

LABEL version="1.0.0" \
      maintainer="wang@rehiy.com"

ADD etc /etc

ENTRYPOINT ["/sbin/init"]

EXPOSE 80 443
