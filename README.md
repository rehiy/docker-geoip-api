# Geoip2 api

基于 `Maxmind DB` 和 `Nginx` 实现的IP信息查询接口，完全使用 `Nginx` 模块实现，不依赖其他第三方动态语言或SDK。

此项目使用了免费版 `Maxmind DB` 数据，归属地可能不够精确。读者可自行更换更好的兼容库。

- 功能预览: https://ipip.rehi.org
- 支持参数: https://ipip.rehi.org/help
- 日志分析报告: https://ipip.rehi.org/report

## 快速启动

```shell
  docker run -d -p 80 -p 443 rehiy/geoip-api
```

> 浏览器访问 http://your-docker-ip/help

## 完整配置

```shell
docker run -d -p 80 -p 443 \
    -v ./data/default.cer:/etc/nginx/certs/default.cer \
    -v ./data/default.key:/etc/nginx/certs/default.key \
    -v ./data/goaccess.conf:/etc/goaccess/goaccess.conf \
    -v ./data/city.mmdb:/usr/share/geoip/city-lite.mmdb \
    -v ./data/report:/var/www/default/report \
    rehiy/geoip-api
```

- `/data/default.cer` 证书文件
- `/data/default.key` 私钥文件
- `/data/goaccess.conf` 日志分析配置文件
- `/data/city.mmdb` Maxmind DB 数据库文件
- `/data/report` 日志分析报告目录
