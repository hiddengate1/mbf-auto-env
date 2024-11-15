FROM python:3.11

WORKDIR /usr/src/app

RUN apt update && apt autoremove --purge && apt clean
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
