#!/bin/bash

echo "###### start to install JAVA ######"
mkdir -p /usr/local/java/
cd /usr/local/java/
cp $1/java/jdk*.tar.gz ./

for jdk in $(ls jdk*.tar.gz)
do
    tar -zxvf $jdk > /dev/null
done

chown -R root:root *
ln -s jdk1.8* current
echo "###### end to install JAVA ######"

echo "###### start to install SCALA ######"
mkdir -p /usr/local/scala/
cd /usr/local/scala/
cp $1/scala/scala*.tgz ./

for sdk in $(ls scala*.tgz)
do
    tar -zxvf $sdk > /dev/null
done

chown -R root:root *
ln -s scala-2.12.6 current
echo "###### end to install SCALA ######"

echo "###### start to install MAVEN ######"
mkdir -p /usr/local/maven/repository
cd /usr/local/maven/
cp $1/maven/apache-maven*.gz ./

for sdk in $(ls apache-maven*.gz)
do
    tar -zxvf $sdk > /dev/null
done

chown -R root:root *
ln -s apache-maven-3.3.9 current
chown nick:nick repository
echo "###### end to install MAVEN ######"

echo "###### start to install GRADLE ######"
mkdir -p /usr/local/gradle/
cd /usr/local/gradle/
cp $1/gradle/gradle*.zip ./

for sdk in $(ls gradle*.zip)
do
    unzip $sdk > /dev/null
done

chown -R root:root *
ln -s gradle-4.8 current
echo "###### end to install GRADLE ######"
