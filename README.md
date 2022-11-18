# Geoip2 api

基于 `Maxmind DB` 和 `Nginx` 实现的IP信息查询接口

## 快速启动

```
  docker run -d -p 80:80 -p 443:443 rehiy/geoip-api
```

> 浏览器访问 http://your-docker-ip/help

## 设置证书

```
docker run -d -P \
    -v /etc/nginx/certs/default.cer \
    -v /etc/nginx/certs/default.key \
    rehiy/geoip-api
```
