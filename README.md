# Geoip2 api

基于 `Maxmind DB` 和 `Nginx` 实现的IP信息查询接口，完全使用 `Nginx` 模块实现，不依赖其他第三方动态语言或SDK。

此项目使用了免费版 `Maxmind DB` 数据，归属地可能不够精确。读者可自行更换更好的兼容库。

- 功能预览: <https://ipip.rehi.org>
- 支持参数: <https://ipip.rehi.org/help>
- 日志分析报告: <https://ipip.rehi.org/report>

## 快速启动

使用如下代码启动后，浏览器访问 <http://your-docker-ip/help>

```shell
  docker run -d -p 80 -p 443 rehiy/geoip-api
```

## 完整配置

下列所有配置均为可选项目，但建议至少修改 `REPORT_PWD` 和 `REPORT_URL` 两个参数。

- `REPORT_PWD` 日志分析报告密码
- `REPORT_URL` 日志分析报告地址
- `/etc/nginx/certs/default.cer` SSL证书文件
- `/etc/nginx/certs/default.key` SSL私钥文件
- `/usr/share/geoip/city-lite.mmdb` Maxmind DB 数据库文件
- `/var/www/default/report` 日志分析报告目录
- `/var/log/nginx` Nginx 日志目录

```shell
docker run -d -p 80 -p 443 \
    -e "REPORT_PWD=admin" \
    -e "REPORT_URL=wss://ipip.rehi.org:443" \
    -v ./data/default.cer:/etc/nginx/certs/default.cer \
    -v ./data/default.key:/etc/nginx/certs/default.key \
    -v ./data/city.mmdb:/usr/share/geoip/city-lite.mmdb \
    -v ./data/report:/var/www/default/report \
    -v ./data/logs:/var/log/nginx \
    rehiy/geoip-api
```
