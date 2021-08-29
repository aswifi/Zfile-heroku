FROM 8-jdk-buster

RUN apt-get update \
    && apt-get install wget curl unzip zip -y

# 使用付费版,删除#号，普通版要加#
#RUN wget -qO cloudreve.tar.gz https://github.com/aaro-n/file/raw/master/cloudreve/cloudreve_pro.tar.gz 
# 使用普通版，要使用付费版，普通版前要加#
#RUN wget -qO cloudreve.tar.gz https://github.com/aaro-n/file/raw/master/cloudreve/cloudreve.tar.gz
RUN wget -qO zfile.war https://github.com/zhaojun1998/zfile/releases/download/3.1/zfile-3.1.war

RUN unzip zfile.war -C /root/zfile
RUN chmod -r +x /root/zfile \
    && chmod -r +x /root/zfile/run.sh

CMD /root/cloudreve/run.sh
