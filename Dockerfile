FROM ubuntu:trusty
MAINTAINER Nick Veenhof "nick.veenhof@acquia.com"

RUN apt-get update
#RUN apt-get install -q -y --force-yes tzdata=2014b-1 tzdata-java
RUN apt-get install -q -y git wget s3cmd openjdk-7-jre-headless openjdk-7-jre

ADD http://mirrors.jenkins-ci.org/war/1.611/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /jenkins

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
CMD [""]
