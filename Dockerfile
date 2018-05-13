FROM python:3.6.4-alpine3.7

LABEL Maintainer="gonzalo.lopez@softtek.com"

RUN mkdir -p /usr/workdir

VOLUME [ "/usr/workdir" ]

WORKDIR /usr/workdir

COPY ./requirements.txt requirements.txt

COPY ./requirements-dev.txt requirements-dev.txt

RUN apk update \
    && apk add gcc g++ musl-dev python3-dev \
    && pip install --no-cache-dir -r requirements.txt \
    && pip install --no-cache-dir -r requirements-dev.txt \
    && apk del gcc g++ musl-dev python3-dev \
    && rm -rf /root/.cache

EXPOSE 5000
