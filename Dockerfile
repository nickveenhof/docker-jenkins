FROM stackbrew/ubuntu:14.04
MAINTAINER Nick Veenhof "nick.veenhof@acquia.com"

RUN apt-get update && apt-get clean
RUN apt-get install -q -y openjdk-7-jre-headless
RUN apt-get install -q -y git
RUN apt-get clean
ADD http://mirrors.jenkins-ci.org/war/1.611/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /jenkins

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8080
CMD [""]
