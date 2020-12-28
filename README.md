# yapi docker镜像

![Build](https://github.com/darrenfang/docker-yapi/workflows/Build/badge.svg) ![Docker Image Version (latest by date)](https://img.shields.io/docker/v/darrenfang/docker-yapi) ![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/darrenfang/docker-yapi)

接口管理平台 yapi Docker 镜像。

## 运行

```shell
docker run --rm -it -p 3000:3000 -v /path_to_config.json:/opt/config.json darrenfang/yapi
```

*示例配置文件*

```json
{
  "port": "3000",
  "adminAccount": "admin@qq.com",
  "timeout":120000,
  "db": {
    "servername": "192.168.1.100",
    "DATABASE": "yapi",
    "port": 27017,
    "authSource": ""
  }
}
```

## 自定义 css

```shell
docker run --rm -it -p 3000:3000 -v /path_to_config.json:/opt/config.json -v /path_to_defaultTheme.css:/opt/yapi/exts/yapi-plugin-export-data/defaultTheme.css darrenfang/yapi
```

查看 [默认 css 文件](https://github.com/YMFE/yapi/blob/master/exts/yapi-plugin-export-data/defaultTheme.css "默认 css 文件")

## 自定义模版

```shell
docker run --rm -it -p 3000:3000 -v /path_to_config.json:/opt/config.json -v /path_to_controller.js:/opt/yapi/exts/yapi-plugin-export-data/controller.js darrenfang/yapi
```

查看 [默认模版文件](https://github.com/YMFE/yapi/blob/master/exts/yapi-plugin-export-data/controller.js "默认模版文件")
