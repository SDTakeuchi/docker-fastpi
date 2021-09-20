# docker build -t python-fastapi .
# docker run python-fastapi
# docker exec -it 8353b0b0c548  /bin/sh

FROM python:3.9.7-slim

WORKDIR /fastapi-app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY ./app ./app

CMD [ "python", "./app/main.py" ]