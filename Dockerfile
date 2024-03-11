FROM python:3.9-alpine3.16

COPY requirements.txt /temp/requirements.txt
RUN pip install -r /temp/requirements.txt
RUN adduser --disabled-password music_library_user

COPY music_library /music_labrary
WORKDIR /music_library
EXPOSE 8000

USER music_library_user