FROM python:3.10-bullseye


#COPY bash.bashrc /etc/
COPY requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

WORKDIR /data/