FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN curl -sL https://deb.nodesource.com/setup_17.x | bash -
RUN apt-get install -y nodejs
COPY . /app
WORKDIR /app
RUN pip3 install -U -r requirements.txt
CMD python3 musicplayer.py
