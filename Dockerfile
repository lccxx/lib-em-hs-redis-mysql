FROM registry.cn-shanghai.aliyuncs.com/lcc/lib-em:latest

RUN set -ex && apk add --no-cache --virtual .builddeps git make g++ && \
    apk add --no-cache mysql-dev && gem install --no-rdoc em-hiredis mysql2 && \
    gem install --no-rdoc specific_install && \
    gem specific_install https://github.com/liu-chong/evma_httpserver.git && \
    apk del .builddeps
