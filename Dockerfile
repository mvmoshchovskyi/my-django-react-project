FROM python:3.8-alpine3.11
MAINTAINER Mykhailo Moshovskyi

ENV PYTHONUNBUFFERED 1

COPY ./backend/requirements.txt /tmp

RUN apk add --no-cache --virtual ..build-deps gcc musl-dev mariadb-dev\
#for pillow
    freetype-dev \
    fribidi-dev \
    harfbuzz-dev \
    jpeg-dev \
    lcms2-dev \
    openjpeg-dev \
    tcl-dev \
    tiff-dev \
    tk-dev \
    zlib-dev

RUN pip install --upgrade pip
RUN cd /tmp && pip install -r requirements.txt

RUN mkdir /app
WORKDIR /app
COPY backend /app

RUN adduser -D user
USER user