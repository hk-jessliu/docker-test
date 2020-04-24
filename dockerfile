FROM ubuntu:18.04 

RUN apt-get update && apt-get install  ansible python3 python3-venv sshpass net-tools vim python-pip  -y && mkdir /mydir

#RUN mkdir /mydir

WORKDIR /mydir

ADD swan-master ./  && test.sh ./

#ADD test.sh ./

RUN chmod +x ./test.sh

