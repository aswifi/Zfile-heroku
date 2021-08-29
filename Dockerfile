FROM openjdk:8-jdk-buster

RUN apt-get update \
    && apt-get install wget curl unzip zip -y

RUN wget -qO zfile.war https://github.com/zhaojun1998/zfile/releases/download/3.1/zfile-3.1.war

RUN cp /run.sh /root/zfile/run.sh
RUN unzip zfile.war -C /root/zfile
RUN chmod -r +x /root/zfile \
    && chmod +x /root/zfile/run.sh

CMD run.sh
