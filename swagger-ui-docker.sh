#!/bin/bash

# 尝试停止已经存在的 docker
docker container stop swagger-ui || true

# 启动 docker
docker run -p 8081:8080 \
-e URLS='[{url: "v1/openapi.yaml", name: "接口定义"},{url: "v1/websocket.yaml", name: "websocket"}, {url: "v1/components.yaml", name: "对象定义"}]' \
-e TRY_IT_OUT_ENABLED=true \
-e PERSIST_AUTHORIZATION=true \
-e DEEP_LINKING=true \
-h swagger-ui \
--name swagger-ui \
--rm \
-v /Users/vissong/Dev/git/bot-oas/v1/:/usr/share/nginx/html/v1 \
-d swaggerapi/swagger-ui && \

# 等待 1s 然后打开浏览器（mac）
sleep 1
open http://127.0.0.1:8081 || true
