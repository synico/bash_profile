FROM centos:7
LABEL maintainer="synico@qq.com"

RUN yum install -y wget

# Replace origin source to aliyun
RUN wget -O /etc/yum.repos.d/CentOS-Base.repo  http://mirrors.aliyun.com/repo/Centos-7.repo
RUN yum makecache
    
RUN yum -y update
RUN yum install -y net-tools curl telnet iputils-ping
    
ENTRYPOINT ["docker-entrypoint.sh"]
