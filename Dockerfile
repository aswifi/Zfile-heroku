FROM openjdk:8-jdk-buster

RUN apt-get update \
    && apt-get install wget curl unzip zip -y

RUN wget -qO zfile.war https://c.jun6.net/ZFILE/zfile-release.war

#RUN cp /run.sh /root/zfile/run.sh
ADD run.sh /run.sh
ADD application.yml /root/zfile/WEB-INF/application.yml
RUN unzip zfile.war -d /root/zfile
RUN chmod -R +x /root/zfile \
    && chmod +x /run.sh

CMD /run.sh
