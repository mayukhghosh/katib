FROM python:3.8-slim-buster
WORKDIR /app

ADD train.py /app

RUN pip install torch torchvision ibm-cos-sdk --no-cache-dir