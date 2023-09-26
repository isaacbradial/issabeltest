FROM centos:centos7
COPY installissabel.sh /issabel/
COPY firstboot /first/
RUN yum install git wget sudo screen -y
RUN chmod 777 /issabel/*
RUN chmod 777 /first/*
CMD /issabel/installissabel.sh