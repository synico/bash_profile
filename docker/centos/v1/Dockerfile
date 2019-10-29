FROM centos:7
LABEL maintainer="synico@qq.com"

RUN buildDeps='net-tools curl telnet iputils-ping' \
    && yum install -y wget \
    && wget -O /etc/yum.repos.d/CentOS-Base.repo  http://mirrors.aliyun.com/repo/Centos-7.repo \
    && yum makecache \
    && yum -y update \
    && yum install -y $buildDeps \
    && yum clean $buildDeps
    
ENTRYPOINT ["docker-entrypoint.sh"]
