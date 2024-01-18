FROM python:alpine

LABEL maintainer="MAHDI GOSYAN <mahdigosyanapple@gmail.com>"

EXPOSE 8080

WORKDIR /opt/app

RUN adduser -DH rootless

USER rootless

COPY . .

CMD python app.py