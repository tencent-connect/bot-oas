#!/bin/bash

docker run -p 8081:8080 \
-e URLS='[{url: "v1/openapi.yaml", name: "接口定义"},{url: "v1/components.yaml", name: "对象定义"}]' \
-e TRY_IT_OUT_ENABLED=true \
-e PERSIST_AUTHORIZATION=true \
-e DEEP_LINKING=true \
-h swagger-ui \
-v /Users/vissong/Dev/git/bot-oas/v1/:/usr/share/nginx/html/v1 \
--rm -d swaggerapi/swagger-ui && \
open http://127.0.0.1:8081
