# Geoip2 api


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
