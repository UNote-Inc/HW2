FROM python:3.11-alpine

ENV FLASK_APP=KV.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=8080

RUN apk add --no-cache curl && pip install flask

COPY . /app

WORKDIR /app

EXPOSE 8080

CMD ["flask", "run"]