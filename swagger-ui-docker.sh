#!/bin/bash

docker run -p 8081:8080 \
-e URLS='[{url: "v1/openapi.yaml", name: "接口定义"},{url: "v1/components.yaml", name: "对象定义"}]' \
-v /Users/vissong/Dev/git/bot-oas/v1/:/usr/share/nginx/html/v1 \
-h swagger-ui \
--rm -d swaggerapi/swagger-ui && \
open http://127.0.0.1:8081
