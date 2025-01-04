# Acg Faka Assets Cdn

利用Docker快速搭建的[Acg Faka](https://github.com/lizhipay/acg-faka)静态资源CDN

## Docker 一键部署

```bash
docker run -d \
    -p 80:80 \
    --name acg-faka-assets-cdn \
    --restart unless-stopped \
    v03413/acg-faka-assets-cdn:latest
```

打开浏览器访问 `http://您的IP` 如果看到以下文字信息即部署成功
> Hi，Build from https://github.com/v03413/acg-faka-assets-cdn