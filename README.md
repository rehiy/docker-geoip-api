# Geoip2 api

基于 `Maxmind DB` 和 `Nginx` 实现的IP信息查询接口

## 快速启动

```
  docker run -d -P rehiy/geoip-api
```

> 浏览器访问 http://your-docker-ip


## 指定端口

```
  docker run -d -p 8080:80 -p 8443:443 rehiy/geoip-api
```

## 指定证书

```
docker run -d -P \
    -v /etc/nginx/certs/default.cer \
    -v /etc/nginx/certs/default.key \
    rehiy/geoip-api
```
