# Geoip2 api

基于 `Maxmind DB` 和 `Nginx` 实现的IP信息查询接口，完全使用 `Nginx` 模块实现，不依赖其他第三方动态语言或SDK。

此项目使用了免费版 `Maxmind DB` 数据，归属地可能不够精确。读者可自行更换更好的兼容库。

演示: http://ipip.rehi.org

## 快速启动

```
  docker run -d -p 80 -p 443 rehiy/geoip-api
```

> 浏览器访问 http://your-docker-ip/help

## 设置证书

```
docker run -d -p 80 -p 443 \
    -v /etc/nginx/certs/default.cer \
    -v /etc/nginx/certs/default.key \
    rehiy/geoip-api
```

## 更换数据库

```
docker run -d -p 80 -p 443 \
    -v your.mmdb:usr/share/geoip/city-lite.mmdb \
    rehiy/geoip-api
```

