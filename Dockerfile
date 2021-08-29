FROM 8-jdk-buster

RUN apt-get update \
    && apt-get install wget curl unzip zip -y

RUN wget -qO zfile.war https://github.com/zhaojun1998/zfile/releases/download/3.1/zfile-3.1.war

RUN unzip zfile.war -C /root/zfile
RUN chmod -r +x /root/zfile \
    && chmod -r +x /root/zfile/run.sh

CMD /root/cloudreve/run.sh
