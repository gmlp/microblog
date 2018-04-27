FROM python:3.6.4-alpine3.7

LABEL Maintainer="gonzalo.lopez@softtek.com"

RUN mkdir -p /usr/workdir

VOLUME [ "/usr/workdir" ]

WORKDIR /usr/workdir

COPY ./requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000
