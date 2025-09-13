# Geoip2 api

基于 `Nginx` 和 `Maxmind DB` 实现的IP信息查询接口，完全使用 `Nginx` 模块实现，不依赖第三方动态语言或SDK。

此项目默认使用了免费版 `Maxmind DB` 数据，归属地可能不够精确，开发者可自行更换更好的兼容库。

- 功能预览: <https://ipip.rehi.org>
- 支持参数: <https://ipip.rehi.org/help>
- 日志报告: <https://ipip.rehi.org/report> ｜ 默认账号/密码 `report/report`

## 快速启动

使用如下代码启动后，浏览器访问 <http://your-docker-ip/help>

```shell
  docker run -d -p 80:80 -p 443:443 rehiy/geoip-api
```

## 完整配置

下列所有配置均为可选项目，但建议至少修改 `GOACCESS_REPORT_PWD` 和 `GOACCESS_REPORT_URL` 两个参数。

- `GOACCESS_REPORT_PWD` 日志分析报告密码
- `GOACCESS_REPORT_URL` 日志分析报告地址
- `/etc/nginx/certs/default.cer` SSL证书文件
- `/etc/nginx/certs/default.key` SSL私钥文件
- `/usr/share/geoip/asn-lite.mmdb` Maxmind DB 数据库文件
- `/usr/share/geoip/city-lite.mmdb` Maxmind DB 数据库文件
- `/var/lib/goaccess` 日志分析报告目录
- `/var/log/nginx` Nginx 日志目录

```shell
docker run -d -p 80:80 -p 443:443 \
    -e "GOACCESS_REPORT_PWD=admin" \
    -e "GOACCESS_REPORT_URL=wss://ipip.rehi.org:443" \
    -v ./data/default.cer:/etc/nginx/certs/default.cer \
    -v ./data/default.key:/etc/nginx/certs/default.key \
    -v ./data/asn.mmdb:/usr/share/geoip/asn-lite.mmdb \
    -v ./data/city.mmdb:/usr/share/geoip/city-lite.mmdb \
    -v ./data/report:/var/lib/goaccess \
    -v ./data/logs:/var/log/nginx \
    rehiy/geoip-api
```
