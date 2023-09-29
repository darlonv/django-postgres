FROM python:3.10-bullseye


#COPY bash.bashrc /etc/
RUN apt update && apt -y install iputils-ping 
COPY requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

WORKDIR /src/